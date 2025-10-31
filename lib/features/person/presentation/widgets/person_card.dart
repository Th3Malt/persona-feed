import 'package:persona_feed/app_imports.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});

  final PersonEntity person;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(DetailPage.routeName, extra: person),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(person.picture.thumbnail),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          person.name.fullName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'há 2 horas',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),

            AspectRatio(
              aspectRatio: 1,
              child: Image.network(person.picture.large, fit: BoxFit.cover),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                children: const [
                  Icon(Icons.favorite_border, size: 28),
                  SizedBox(width: 12),
                  Icon(Icons.mode_comment_outlined, size: 28),
                  SizedBox(width: 12),
                  Icon(Icons.send_outlined, size: 28),
                  Spacer(),
                  Icon(Icons.bookmark_border, size: 28),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(person.email, style: const TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
