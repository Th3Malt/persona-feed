part of 'person_cubit.dart';

abstract class PersonState {
  final List<PersonEntity> items;
  final Set<String> persistedIds;

  PersonState({required this.items, required this.persistedIds});
}

class PersonInitial extends PersonState {
  PersonInitial() : super(items: [], persistedIds: {});
}

class PersonLoading extends PersonState {
  PersonLoading(List<PersonEntity> previous, Set<String> persisted)
    : super(items: previous, persistedIds: persisted);
}

class PersonLoaded extends PersonState {
  PersonLoaded(List<PersonEntity> items, Set<String> persisted)
    : super(items: items, persistedIds: persisted);
}

class PersonError extends PersonState {
  final String message;
  PersonError({
    required this.message,
    required super.items,
    required Set<String> persisted,
  }) : super(persistedIds: persisted);
}
