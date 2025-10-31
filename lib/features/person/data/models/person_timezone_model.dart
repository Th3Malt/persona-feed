import 'package:persona_feed/app_imports.dart';

part 'person_timezone_model.g.dart';

@Embedded()
class PersonTimezoneModel {
  String offset;
  String description;

  PersonTimezoneModel({this.offset = '', this.description = ''});

  static PersonTimezoneEntity fromMap(Map<String, dynamic> map) {
    return PersonTimezoneEntity(
      offset: map['offset'] ?? '',
      description: map['description'] ?? '',
    );
  }

  static PersonTimezoneModel fromEntity(PersonTimezoneEntity entity) {
    return PersonTimezoneModel(
      offset: entity.offset,
      description: entity.description,
    );
  }

  PersonTimezoneEntity toEntity() {
    return PersonTimezoneEntity(offset: offset, description: description);
  }
}
