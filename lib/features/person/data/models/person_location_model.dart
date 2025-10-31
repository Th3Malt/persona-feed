import 'package:persona_feed/app_imports.dart';

part 'person_location_model.g.dart';

@Embedded()
class PersonLocationModel {
  PersonStreetModel? street;
  String city;
  String state;
  String country;
  String postcode;
  PersonCoordinatesModel? coordinates;
  PersonTimezoneModel? timezone;

  PersonLocationModel({
    this.street,
    this.city = '',
    this.state = '',
    this.country = '',
    this.postcode = '',
    this.coordinates,
    this.timezone,
  });

  static PersonLocationEntity fromMap(Map<String, dynamic> map) {
    return PersonLocationEntity(
      street: PersonStreetModel.fromMap(map['street'] ?? {}),
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      country: map['country'] ?? '',
      postcode: map['postcode']?.toString() ?? '',
      coordinates: PersonCoordinatesModel.fromMap(map['coordinates'] ?? {}),
      timezone: PersonTimezoneModel.fromMap(map['timezone'] ?? {}),
    );
  }

  static PersonLocationModel fromEntity(PersonLocationEntity entity) {
    return PersonLocationModel(
      street: PersonStreetModel.fromEntity(entity.street),
      city: entity.city,
      state: entity.state,
      country: entity.country,
      postcode: entity.postcode,
      coordinates: PersonCoordinatesModel.fromEntity(entity.coordinates),
      timezone: PersonTimezoneModel.fromEntity(entity.timezone),
    );
  }

  PersonLocationEntity toEntity() {
    return PersonLocationEntity(
      street: street?.toEntity() ?? PersonStreetEntity(number: 0, name: ''),
      city: city,
      state: state,
      country: country,
      postcode: postcode,
      coordinates:
          coordinates?.toEntity() ??
          PersonCoordinatesEntity(latitude: '', longitude: ''),
      timezone:
          timezone?.toEntity() ??
          PersonTimezoneEntity(offset: '', description: ''),
    );
  }
}
