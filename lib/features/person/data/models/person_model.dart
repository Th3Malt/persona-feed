import 'package:persona_feed/app_imports.dart';

part 'person_model.g.dart';

@Collection()
class PersonModel {
  Id isarId = Isar.autoIncrement;

  String gender;

  PersonNameModel name;

  PersonLocationModel location;

  String email;

  PersonLoginModel login;

  PersonDateModel dob;

  PersonDateModel registered;

  String phone;
  String cell;

  PersonIdModel id;

  PersonPictureModel picture;

  String nat;

  PersonModel({
    this.isarId = Isar.autoIncrement,
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

  static PersonEntity fromMap(Map<String, dynamic> map) {
    return PersonEntity(
      gender: map['gender'] ?? '',
      name: PersonNameModel.fromMap(map['name'] ?? {}),
      location: PersonLocationModel.fromMap(map['location'] ?? {}),
      email: map['email'] ?? '',
      login: PersonLoginModel.fromMap(map['login'] ?? {}),
      dob: PersonDateModel.fromMap(map['dob'] ?? {}),
      registered: PersonDateModel.fromMap(map['registered'] ?? {}),
      phone: map['phone'] ?? '',
      cell: map['cell'] ?? '',
      id: PersonIdModel.fromMap(map['id'] ?? {}),
      picture: PersonPictureModel.fromMap(map['picture'] ?? {}),
      nat: map['nat'] ?? '',
    );
  }

  static PersonModel fromEntity(PersonEntity entity) {
    return PersonModel(
      isarId: entity.isarId ?? Isar.autoIncrement,
      gender: entity.gender,
      name: PersonNameModel.fromEntity(entity.name),
      location: PersonLocationModel.fromEntity(entity.location),
      email: entity.email,
      login: PersonLoginModel.fromEntity(entity.login),
      dob: PersonDateModel.fromEntity(entity.dob),
      registered: PersonDateModel.fromEntity(entity.registered),
      phone: entity.phone,
      cell: entity.cell,
      id: PersonIdModel.fromEntity(entity.id),
      picture: PersonPictureModel.fromEntity(entity.picture),
      nat: entity.nat,
    );
  }

  PersonEntity toEntity() {
    return PersonEntity(
      isarId: isarId,
      gender: gender,
      name: name.toEntity(),
      location: location.toEntity(),
      email: email,
      login: login.toEntity(),
      dob: dob.toEntity(),
      registered: registered.toEntity(),
      phone: phone,
      cell: cell,
      id: id.toEntity(),
      picture: picture.toEntity(),
      nat: nat,
    );
  }
}
