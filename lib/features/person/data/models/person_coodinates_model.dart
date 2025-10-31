import 'package:persona_feed/app_imports.dart';

part 'person_coodinates_model.g.dart';

@Embedded()
class PersonCoordinatesModel {
  String latitude;
  String longitude;

  PersonCoordinatesModel({this.latitude = '', this.longitude = ''});

  static PersonCoordinatesEntity fromMap(Map<String, dynamic> map) {
    return PersonCoordinatesEntity(
      latitude: map['latitude']?.toString() ?? '',
      longitude: map['longitude']?.toString() ?? '',
    );
  }

  static PersonCoordinatesModel fromEntity(PersonCoordinatesEntity entity) {
    return PersonCoordinatesModel(
      latitude: entity.latitude,
      longitude: entity.longitude,
    );
  }

  PersonCoordinatesEntity toEntity() {
    return PersonCoordinatesEntity(latitude: latitude, longitude: longitude);
  }
}
