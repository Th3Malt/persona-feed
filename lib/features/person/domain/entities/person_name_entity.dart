class PersonNameEntity {
  final String title;
  final String first;
  final String last;

  PersonNameEntity({
    required this.title,
    required this.first,
    required this.last,
  });

  String get fullName => '$title $first $last';
}
