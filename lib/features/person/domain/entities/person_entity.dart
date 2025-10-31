import 'package:persona_feed/app_imports.dart';

class PersonEntity {
  final int? isarId;
  final String gender;
  final PersonNameEntity name;
  final PersonLocationEntity location;
  final String email;
  final PersonLoginEntity login;
  final PersonDateEntity dob;
  final PersonDateEntity registered;
  final String phone;
  final String cell;
  final PersonIdEntity id;
  final PersonPictureEntity picture;
  final String nat;

  PersonEntity({
    this.isarId,
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });
}
