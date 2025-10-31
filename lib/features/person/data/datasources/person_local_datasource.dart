import 'package:persona_feed/app_imports.dart';

abstract class PersonLocalDataSource {
  Future<void> savePerson(PersonEntity person);
  Future<void> removePerson(PersonIdEntity id);
  Future<List<PersonEntity>> getAllPersons();
  Future<bool> exists(PersonIdEntity id);
}

class PersonLocalDataSourceImpl implements PersonLocalDataSource {
  final Isar isar;

  PersonLocalDataSourceImpl(this.isar);

  @override
  Future<void> savePerson(PersonEntity person) async {
    await isar.writeTxn(() async {
      await isar.personModels.put(PersonModel.fromEntity(person));
    });
  }

  @override
  Future<void> removePerson(PersonIdEntity id) async {
    await isar.writeTxn(() async {
      final person = await isar.personModels
          .filter()
          .id((q) => q.nameEqualTo(id.name).and().valueEqualTo(id.value))
          .findFirst();

      if (person != null) {
        await isar.personModels.delete(person.isarId);
      }
    });
  }

  @override
  Future<List<PersonEntity>> getAllPersons() async {
    final models = await isar.personModels.where(sort: Sort.desc).findAll();
    return models.map((model) => model.toEntity()).toList()
      ..sort((a, b) => b.isarId!.compareTo(a.isarId!));
  }

  @override
  Future<bool> exists(PersonIdEntity id) async {
    final person = await isar.personModels
        .filter()
        .id((q) => q.nameEqualTo(id.name).and().valueEqualTo(id.value))
        .findFirst();
    return person != null;
  }
}
