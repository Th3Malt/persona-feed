import 'package:persona_feed/app_imports.dart';

class PersonDetailCubit extends Cubit<void> {
  final IPersonRepository repository;
  final PersonCubit personCubit;

  PersonDetailCubit(this.repository, this.personCubit) : super(null);

  Future<bool> isPersisted(PersonIdEntity id) async =>
      await repository.isPersisted(id);

  Future<void> save(PersonEntity p) async {
    await repository.savePerson(p);
    personCubit.setPersistedFlag(p.id.id, true);
    await personCubit.refreshPersistedIds();
  }

  Future<void> remove(PersonIdEntity id) async {
    await repository.removePersisted(id);
    personCubit.setPersistedFlag(id.id, false);
    personCubit.removePersonById(id.id);
    await personCubit.refreshPersistedIds();
  }
}
