import 'package:persona_feed/app_imports.dart';

part 'person_picture_model.g.dart';

@Embedded()
class PersonPictureModel {
  String large;
  String medium;
  String thumbnail;

  PersonPictureModel({this.large = '', this.medium = '', this.thumbnail = ''});

  static PersonPictureEntity fromMap(Map<String, dynamic> map) {
    return PersonPictureEntity(
      large: map['large'] ?? '',
      medium: map['medium'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
    );
  }

  static PersonPictureModel fromEntity(PersonPictureEntity entity) {
    return PersonPictureModel(
      large: entity.large,
      medium: entity.medium,
      thumbnail: entity.thumbnail,
    );
  }

  PersonPictureEntity toEntity() {
    return PersonPictureEntity(
      large: large,
      medium: medium,
      thumbnail: thumbnail,
    );
  }
}
