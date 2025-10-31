import 'package:persona_feed/features/person/person_imports.dart';

abstract class IPersonRepository {
  Future<PersonEntity> fetchRandomPerson();
  Future<void> savePerson(PersonEntity person);
  Future<void> removePersisted(PersonIdEntity id);
  Future<List<PersonEntity>> getPersistedList();
  Future<bool> isPersisted(PersonIdEntity id);
}
