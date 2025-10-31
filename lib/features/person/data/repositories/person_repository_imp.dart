import 'package:persona_feed/features/person/person_imports.dart';

class PersonRepositoryImp implements IPersonRepository {
  final PersonExternalDataSource remote;
  final PersonLocalDataSource local;

  PersonRepositoryImp(this.remote, this.local);

  @override
  Future<PersonEntity> fetchRandomPerson() async {
    final entity = await remote.fetchRandomPerson();
    return entity;
  }

  @override
  Future<void> removePersisted(PersonIdEntity id) => local.removePerson(id);

  @override
  Future<bool> isPersisted(PersonIdEntity id) => local.exists(id);

  @override
  Future<List<PersonEntity>> getPersistedList() async {
    final list = await local.getAllPersons();
    return list;
  }

  @override
  Future<void> savePerson(PersonEntity person) async {
    await local.savePerson(person);
  }
}
