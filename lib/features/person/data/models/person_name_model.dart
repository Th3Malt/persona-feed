import 'package:persona_feed/app_imports.dart';

part 'person_name_model.g.dart';

@Embedded()
class PersonNameModel {
  String title;
  String first;
  String last;

  PersonNameModel({this.title = '', this.first = '', this.last = ''});

  static PersonNameEntity fromMap(Map<String, dynamic> map) {
    return PersonNameEntity(
      title: map['title'] ?? '',
      first: map['first'] ?? '',
      last: map['last'] ?? '',
    );
  }

  static PersonNameModel fromEntity(PersonNameEntity entity) {
    return PersonNameModel(
      title: entity.title,
      first: entity.first,
      last: entity.last,
    );
  }

  PersonNameEntity toEntity() {
    return PersonNameEntity(title: title, first: first, last: last);
  }
}
