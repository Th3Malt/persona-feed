import 'package:get_it/get_it.dart';
import 'package:persona_feed/app_imports.dart';

class ServiceLocator {
  ServiceLocator._();

  static GetIt get locator => GetIt.instance;

  static Future<void> setupServiceLocator({
    bool useMockRepository = false,
  }) async {
    await _registerBaseServices();
    await _registerInfra();
    await _registerLocal();
    await _registerExternal();
    await _registerPresenter();
  }

  static Future<void> _registerBaseServices() async {
    locator.registerSingleton<IHttpService>(
      HttpServiceFactory.createDioService(),
    );
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([PersonModelSchema], directory: dir.path);

    locator.registerSingleton<Isar>(isar);
  }

  static Future<void> _registerInfra() async {
    locator.registerLazySingleton<IPersonRepository>(
      () => PersonRepositoryImp(locator(), locator()),
    );
  }

  static Future<void> _registerExternal() async {
    locator.registerLazySingleton<PersonExternalDataSource>(
      () => PersonExternalDataSourceImpl(locator()),
    );
  }

  static Future<void> _registerLocal() async {
    locator.registerLazySingleton<PersonLocalDataSource>(
      () => PersonLocalDataSourceImpl(locator<Isar>()),
    );
  }

  static Future<void> _registerPresenter() async {
    locator.registerLazySingleton<PersonCubit>(() => PersonCubit(locator()));

    locator.registerFactory<PersonDetailCubit>(
      () => PersonDetailCubit(locator(), locator()),
    );
    locator.registerFactory<PersonPersistedCubit>(
      () => PersonPersistedCubit(locator(), locator()),
    );
  }

  static Future<void> resetAllInstances() async {
    await locator.reset();
    await setupServiceLocator();
  }
}
