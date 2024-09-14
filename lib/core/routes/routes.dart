import 'package:go_router/go_router.dart';
import 'package:tech_test/modules/edit_profile/views/edit_profile_screen.dart';
import 'package:tech_test/modules/home/presentation/views/home_screen.dart';
import 'package:tech_test/modules/profile/presentation/views/profile_screen.dart';

class Routes {
  static const String home = '/';

  static const String profile = '/profile';
  static const String editProfile = 'edit';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) => const ProfileScreen(),
        routes: [
          GoRoute(
            path: editProfile,
            builder: (context, state) => const EditProfileScreen(),
          ),
        ],
      )
    ],
  );
}
