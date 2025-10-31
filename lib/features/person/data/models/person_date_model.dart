import 'package:persona_feed/app_imports.dart';

part 'person_date_model.g.dart';

@Embedded()
class PersonDateModel {
  DateTime? date;
  int age;

  PersonDateModel({this.date, this.age = 0});

  static PersonDateEntity fromMap(Map<String, dynamic> map) {
    return PersonDateEntity(
      date: DateTime.tryParse(map['date'] ?? '') ?? DateTime(1970),
      age: map['age'] ?? 0,
    );
  }

  static PersonDateModel fromEntity(PersonDateEntity entity) {
    return PersonDateModel(date: entity.date, age: entity.age);
  }

  PersonDateEntity toEntity() {
    return PersonDateEntity(date: date, age: age);
  }
}
