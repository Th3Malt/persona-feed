import 'package:persona_feed/app_imports.dart';

class PersistedPage extends StatefulWidget {
  static const String routeName = '/persisted';
  const PersistedPage({super.key});
  @override
  State<PersistedPage> createState() => _PersistedPageState();
}

class _PersistedPageState extends State<PersistedPage> {
  late final PersonPersistedCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = ServiceLocator.locator<PersonPersistedCubit>();
    _cubit.loadPersisted();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        backgroundColor: Color(0xffE0E0E0),
        appBar: AppBar(
          title: const Text('Persistidos'),
          backgroundColor: Color(0xffE0E0E0),
        ),
        body: BlocBuilder<PersonPersistedCubit, PersonPersistedState>(
          builder: (context, state) {
            final persistedCubit = BlocProvider.of<PersonPersistedCubit>(
              context,
            );
            if (state is PersonPersistedLoading ||
                state is PersonPersistedInitial) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PersonPersistedError) {
              return Center(child: Text('Erro: ${state.message}'));
            }
            if (state is PersonPersistedLoaded) {
              final items = state.items;
              if (items.isEmpty) {
                return const Center(child: Text('Nenhum usuário persistido'));
              }
              return ListView.separated(
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (_, i) {
                  final person = items[i];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(person.picture.large),
                    ),
                    title: Text(person.name.fullName),
                    subtitle: Text(person.email),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        persistedCubit.removeById(person.id);
                        // await context.read<PersonPersistedCubit>().removeById(
                        //   person.id.id,
                        // );
                        // final personCubit =
                        //     ServiceLocator.locator<PersonCubit>();
                        // personCubit.setPersistedFlag(person.id.id, false);
                        // personCubit.removePersonById(person.id.id);
                      },
                    ),
                    onTap: () =>
                        context.push(DetailPage.routeName, extra: person),
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
