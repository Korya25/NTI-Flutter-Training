import 'package:go_router/go_router.dart';
import 'package:login_signup/core/resource/app_routes.dart';
import 'package:login_signup/features/data/model/all_users_model.dart';
import 'package:login_signup/features/presentation/views/all_users_view.dart';
import 'package:login_signup/features/presentation/views/login_view.dart';
import 'package:login_signup/features/presentation/views/profile_view.dart';
import 'package:login_signup/features/presentation/views/sign_up_view.dart';
import 'package:login_signup/features/presentation/views/user_detail_screen.dart';

class AppRouter {
  // using GoRouter for routing
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(
        path: AppRoutes.login,
        name: AppRoutes.login,
        builder: (context, state) {
          return const LoginView();
        },
      ),
      GoRoute(
        path: AppRoutes.register,
        name: AppRoutes.register,
        builder: (context, state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>?;

          final email = extras?['email'] ?? '';
          final password = extras?['password'] ?? '';
          return ProfileView(email: email, password: password);
        },
      ),
      GoRoute(
        path: AppRoutes.allUsers,
        name: AppRoutes.allUsers,
        builder: (context, state) {
          return AllUsersView();
        },
      ),

      GoRoute(
        path: AppRoutes.userDetail,
        name: AppRoutes.userDetail,
        builder: (context, state) {
          final user = state.extra as User;

          return UserDetailScreen(user: user);
        },
      ),
    ],
  );
}
