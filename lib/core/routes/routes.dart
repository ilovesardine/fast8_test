import 'package:go_router/go_router.dart';

class Routes {
  static const String home = '/';

  static const String profile = '/profile';
  static const String editProfile = 'edit';

  static final routes = GoRouter(
    routes: [
      GoRoute(path: home),
      GoRoute(
        path: profile,
        routes: [
          GoRoute(
            path: editProfile,
          ),
        ],
      )
    ],
  );
}
