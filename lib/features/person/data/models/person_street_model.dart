import 'package:persona_feed/app_imports.dart';

part 'person_street_model.g.dart';

@Embedded()
class PersonStreetModel {
  int number;
  String name;

  PersonStreetModel({this.number = 0, this.name = ''});

  static PersonStreetEntity fromMap(Map<String, dynamic> map) {
    return PersonStreetEntity(
      number: map['number'] ?? 0,
      name: map['name'] ?? '',
    );
  }

  static PersonStreetModel fromEntity(PersonStreetEntity entity) {
    return PersonStreetModel(number: entity.number, name: entity.name);
  }

  PersonStreetEntity toEntity() {
    return PersonStreetEntity(number: number, name: name);
  }
}
