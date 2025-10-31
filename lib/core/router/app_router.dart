import 'package:flutter/foundation.dart';
import 'package:persona_feed/app_imports.dart';

class AppRouter {
  const AppRouter._();

  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  static BuildContext? get ctx =>
      router.routerDelegate.navigatorKey.currentContext;

  static String get initialRoute => HomePage.routeName;

  static GoRouter router = GoRouter(
    initialLocation: initialRoute,
    debugLogDiagnostics: kDebugMode,
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: HomePage.routeName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: DetailPage.routeName,
        builder: (context, state) =>
            DetailPage(person: state.extra as PersonEntity),
      ),

      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PersistedPage.routeName,
        builder: (context, state) => PersistedPage(),
      ),
    ],
  );
}
