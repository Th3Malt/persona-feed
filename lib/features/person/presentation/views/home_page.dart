import 'package:persona_feed/app_imports.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PersonCubit cubit;

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  int lastItemsCount = 0;

  int? firstVisibleIndex;
  double? firstVisibleLeading;

  @override
  void initState() {
    super.initState();
    cubit = ServiceLocator.locator<PersonCubit>();
    cubit.startPolling();

    itemPositionsListener.itemPositions.addListener(_saveFirstVisible);
  }

  void _saveFirstVisible() {
    final positions = itemPositionsListener.itemPositions.value;
    if (positions.isEmpty) return;

    final first = positions
        .where((p) => p.itemLeadingEdge <= 1.0)
        .reduce((a, b) => a.index < b.index ? a : b);
    firstVisibleIndex = first.index;
    firstVisibleLeading = first.itemLeadingEdge;
  }

  @override
  void dispose() {
    itemPositionsListener.itemPositions.removeListener(_saveFirstVisible);
    cubit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PersonCubit>.value(
      value: cubit,
      child: Scaffold(
        backgroundColor: Color(0xff0E534F),
        appBar: AppBar(
          backgroundColor: Color(0xffE0E0E0),
          title: const Text('Persona Feed'),
          actions: [
            IconButton(
              icon: const Icon(Icons.storage),
              onPressed: () {
                context.push(PersistedPage.routeName);
              },
            ),
          ],
        ),
        body: BlocListener<PersonCubit, PersonState>(
          bloc: cubit,
          listener: (context, state) {
            final newCount = state.items.length;
            if (lastItemsCount == 0) {
              lastItemsCount = newCount;
              return;
            }

            final delta = newCount - lastItemsCount;
            lastItemsCount = newCount;

            if (delta > 0 && itemScrollController.isAttached) {
              final isAtTop = firstVisibleIndex == 0;

              if (isAtTop) {
                itemScrollController.jumpTo(index: 0, alignment: 0);
              } else {
                final indexToScroll = (firstVisibleIndex ?? 0) + delta;
                final alignment = firstVisibleLeading?.clamp(0.0, 1.0) ?? 0.0;
                itemScrollController.jumpTo(
                  index: indexToScroll,
                  alignment: alignment,
                );
              }
            }
          },
          child: BlocBuilder<PersonCubit, PersonState>(
            builder: (context, state) {
              final items = state.items;
              if (state is PersonInitial ||
                  state is PersonLoading && items.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                );
              }
              if (items.isEmpty) {
                return const WaitingText();
              }

              return RefreshIndicator(
                onRefresh: () async {
                  await cubit.manualRefresh();
                  itemScrollController.jumpTo(index: 0, alignment: 0);
                },
                child: ScrollablePositionedList.separated(
                  itemCount: items.length,

                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  itemScrollController: itemScrollController,
                  itemPositionsListener: itemPositionsListener,
                  separatorBuilder: (_, __) => const SizedBox(height: 16),
                  itemBuilder: (_, i) {
                    final person = items[i];
                    return PersonCard(person: person);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
