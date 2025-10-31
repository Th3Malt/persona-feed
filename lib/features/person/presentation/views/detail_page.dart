import 'dart:math';

import 'package:get_it/get_it.dart';
import 'package:persona_feed/app_imports.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/person/detail';

  final PersonEntity person;
  const DetailPage({required this.person, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late final PersonDetailCubit cubit;
  bool _isPersisted = false;

  final List<String> _posts = [
    'https://images.pexels.com/photos/532588/pexels-photo-532588.jpeg',
    'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg',
    'https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg',
    'https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg',
    'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg',
  ];

  late final String postsCount;
  late final String followersCount;
  late final String followingCount;

  @override
  void initState() {
    super.initState();

    final random = Random();
    postsCount = random.nextInt(99).toString();
    followersCount = random.nextInt(99999).toString();
    followingCount = random.nextInt(999).toString();
    cubit = GetIt.I<PersonDetailCubit>();
    cubit
        .isPersisted(widget.person.id)
        .then((v) => setState(() => _isPersisted = v));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0E534F),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () => Navigator.of(context).pop(),
        child: const Icon(Icons.close, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20 + kToolbarHeight,
              left: 16,
              right: 16,
              bottom: 18,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Color(0xFF78B032), Color(0xFF0E534F)],
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.grey.shade100,
                          backgroundImage: NetworkImage(
                            widget.person.picture.large,
                          ),
                        ),
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.person.name.fullName,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),

                            const SizedBox(height: 6),
                            Text(
                              widget.person.email,
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: const Color(0xFF0E534F),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 14,
                                  color: Color(0xFF0E534F),
                                ),
                                const SizedBox(width: 4),
                                Expanded(
                                  child: Text(
                                    widget.person.location.fullAddress,
                                    style: theme.textTheme.bodySmall,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStat(postsCount, 'posts'),
                      _buildStat(followersCount, 'seguidores'),
                      _buildStat(followingCount, 'seguindo'),
                    ],
                  ),

                  const SizedBox(height: 14),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0E534F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () async {
                      if (_isPersisted) {
                        await cubit.remove(widget.person.id);
                      } else {
                        await cubit.save(widget.person);
                      }
                      final now = await cubit.isPersisted(widget.person.id);
                      setState(() => _isPersisted = now);
                    },
                    child: Text(
                      _isPersisted ? 'Remover' : 'Salvar',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                child: GridView.builder(
                  itemCount: _posts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, index) {
                    final img = _posts[index % _posts.length];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(img, fit: BoxFit.cover),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.black54, fontSize: 12),
        ),
      ],
    );
  }
}
