import 'dart:async';

import 'package:persona_feed/app_imports.dart';

part 'person_persisted_state.dart';

class PersonPersistedCubit extends Cubit<PersonPersistedState> {
  final IPersonRepository repository;
  StreamSubscription? _personSub;
  final PersonCubit personCubit;

  PersonPersistedCubit(this.repository, this.personCubit)
    : super(PersonPersistedInitial()) {
    _personSub = personCubit.stream.listen((state) {
      if (state is PersonLoaded) {
        loadPersisted();
      }
    });
  }

  Future<void> loadPersisted() async {
    try {
      emit(PersonPersistedLoading());
      final list = await repository.getPersistedList();
      emit(PersonPersistedLoaded(list));
    } catch (e) {
      emit(PersonPersistedError(e.toString()));
    }
  }

  Future<void> removeById(PersonIdEntity id) async {
    try {
      await repository.removePersisted(id);
      personCubit.removePersonById(id.id);
      final list = await repository.getPersistedList();
      emit(PersonPersistedLoaded(list));
    } catch (e) {
      emit(PersonPersistedError(e.toString()));
    }
  }

  Future<void> refresh() async => await loadPersisted();

  @override
  Future<void> close() {
    _personSub?.cancel();
    return super.close();
  }
}
