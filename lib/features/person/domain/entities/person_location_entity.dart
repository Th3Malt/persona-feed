import 'package:persona_feed/app_imports.dart';

class PersonLocationEntity {
  final PersonStreetEntity street;
  final String city;
  final String state;
  final String country;
  final String postcode;
  final PersonCoordinatesEntity coordinates;
  final PersonTimezoneEntity timezone;

  PersonLocationEntity({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  String get fullAddress {
    return '${street.number} ${street.name}, $city, $state, $country, $postcode';
  }
}
