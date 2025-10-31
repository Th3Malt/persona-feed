import 'package:persona_feed/app_imports.dart';

part 'person_id_model.g.dart';

@Embedded()
class PersonIdModel {
  String? name;
  String? value;

  PersonIdModel({this.name, this.value});

  static PersonIdEntity fromMap(Map<String, dynamic>? map) {
    if (map == null) return PersonIdEntity(name: '', value: '');
    return PersonIdEntity(name: map['name'], value: map['value']);
  }

  static PersonIdModel fromEntity(PersonIdEntity entity) {
    return PersonIdModel(name: entity.name, value: entity.value);
  }

  PersonIdEntity toEntity() {
    return PersonIdEntity(name: name, value: value);
  }
}
