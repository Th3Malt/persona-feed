import 'package:flutter/scheduler.dart';
import 'package:persona_feed/app_imports.dart';

part 'person_state.dart';

class PersonCubit extends Cubit<PersonState> {
  final IPersonRepository repository;
  late final Ticker _ticker;
  Duration _lastFetch = Duration.zero;
  bool _running = false;

  PersonCubit(this.repository) : super(PersonInitial()) {
    _ticker = Ticker(_onTick);
    _initPersisted();
  }
  Future<void> _initPersisted() async {
    final persisted = await repository.getPersistedList();
    final ids = persisted.map((p) => p.id.id).toSet();
    final items = List<PersonEntity>.from(persisted);
    emit(PersonLoaded(items, ids));
  }

  void _onTick(Duration elapsed) {
    if (!_running) return;
    final diff = elapsed - _lastFetch;
    if (diff >= const Duration(seconds: 5)) {
      _lastFetch = elapsed;
      _fetchAndAdd();
    }
  }

  Future<void> startPolling() async {
    if (_running) return;
    _running = true;
    _lastFetch = Duration.zero;
    _ticker.start();
    await _fetchAndAdd();
  }

  Future<void> stopPolling() async {
    _running = false;
    _ticker.stop();
  }

  Future<void> _fetchAndAdd() async {
    try {
      emit(PersonLoading(state.items, state.persistedIds));
      final person = await repository.fetchRandomPerson();
      final updated = List<PersonEntity>.from(state.items)..insert(0, person);
      emit(PersonLoaded(updated, state.persistedIds));
      await repository.savePerson(person);
      await refreshPersistedIds();
    } catch (e) {
      emit(
        PersonError(
          message: e.toString(),
          items: state.items,
          persisted: state.persistedIds,
        ),
      );
    }
  }

  Future<void> manualRefresh() async => await _fetchAndAdd();

  Future<void> dispose() async {
    stopPolling();
    _ticker.dispose();
    await close();
  }

  Future<void> refreshPersistedIds() async {
    final list = await repository.getPersistedList();
    final ids = list.map((p) => p.id.id).toSet();
    emit(PersonLoaded(state.items, ids));
  }

  void setPersistedFlag(String id, bool persisted) {
    final newSet = Set<String>.from(state.persistedIds);
    if (persisted) {
      newSet.add(id);
    } else {
      newSet.remove(id);
    }
    emit(PersonLoaded(state.items, newSet));
  }

  void removePersonById(String id) {
    final updated = state.items.where((p) => p.id.id != id).toList();
    final newSet = Set<String>.from(state.persistedIds)..remove(id);
    emit(PersonLoaded(updated, newSet));
  }

  Future<void> togglePersist(PersonEntity person) async {
    final id = person.id.id;
    final exists = await repository.isPersisted(person.id);
    if (exists) {
      await repository.removePersisted(person.id);
      setPersistedFlag(id, false);
    } else {
      await repository.savePerson(person);
      setPersistedFlag(id, true);
    }
  }
}
