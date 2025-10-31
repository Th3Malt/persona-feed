part of 'person_persisted_cubit.dart';

abstract class PersonPersistedState {}

class PersonPersistedInitial extends PersonPersistedState {}

class PersonPersistedLoading extends PersonPersistedState {}

class PersonPersistedLoaded extends PersonPersistedState {
  final List<PersonEntity> items;
  PersonPersistedLoaded(this.items);
}

class PersonPersistedError extends PersonPersistedState {
  final String message;
  PersonPersistedError(this.message);
}
