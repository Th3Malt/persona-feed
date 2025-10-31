import 'package:persona_feed/app_imports.dart';

abstract class PersonExternalDataSource {
  Future<PersonEntity> fetchRandomPerson();
}

class PersonExternalDataSourceImpl implements PersonExternalDataSource {
  final IHttpService client;

  PersonExternalDataSourceImpl(this.client);

  @override
  Future<PersonEntity> fetchRandomPerson() async {
    final res = await client.get('https://randomuser.me/api/');
    if (res.statusCode == 200) {
      final map = res.data as Map<String, dynamic>;
      final results = map['results'] as List<dynamic>;
      final json = results.first as Map<String, dynamic>;
      return PersonModel.fromMap(json);
    }
    throw Exception('Erro ao buscar pessoa: ${res.statusCode}');
  }
}
