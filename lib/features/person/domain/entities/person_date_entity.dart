class PersonDateEntity {
  final DateTime? date;
  final int age;

  PersonDateEntity({this.date, required this.age});

  factory PersonDateEntity.fromMap(Map<String, dynamic> map) {
    return PersonDateEntity(date: DateTime.parse(map['date']), age: map['age']);
  }
}
