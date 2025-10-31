class PersonIdEntity {
  final String? name;
  final String? value;

  PersonIdEntity({required this.name, required this.value});

  String get id {
    if (name != null && value != null) {
      return '$name$value';
    } else {
      return 'no-id';
    }
  }
}
