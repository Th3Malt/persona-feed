import 'package:persona_feed/app_imports.dart';

part 'person_login_model.g.dart';

@Embedded()
class PersonLoginModel {
  String uuid;
  String username;
  String password;
  String salt;
  String md5;
  String sha1;
  String sha256;

  PersonLoginModel({
    this.uuid = '',
    this.username = '',
    this.password = '',
    this.salt = '',
    this.md5 = '',
    this.sha1 = '',
    this.sha256 = '',
  });

  static PersonLoginEntity fromMap(Map<String, dynamic> map) {
    return PersonLoginEntity(
      uuid: map['uuid'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      salt: map['salt'] ?? '',
      md5: map['md5'] ?? '',
      sha1: map['sha1'] ?? '',
      sha256: map['sha256'] ?? '',
    );
  }

  static PersonLoginModel fromEntity(PersonLoginEntity entity) {
    return PersonLoginModel(
      uuid: entity.uuid,
      username: entity.username,
      password: entity.password,
      salt: entity.salt,
      md5: entity.md5,
      sha1: entity.sha1,
      sha256: entity.sha256,
    );
  }

  PersonLoginEntity toEntity() {
    return PersonLoginEntity(
      uuid: uuid,
      username: username,
      password: password,
      salt: salt,
      md5: md5,
      sha1: sha1,
      sha256: sha256,
    );
  }
}
