import 'package:go_router/go_router.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/forgot_password_page.dart';
import '../features/auth/presentation/pages/singup_page.dart';
import '../features/auth/presentation/pages/verification_page.dart';
import '../features/auth/presentation/pages/location_page.dart';

class AppRouter {

  static final GoRouter router = GoRouter(

    initialLocation: '/login',

    routes: [

      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),

      GoRoute(
        path: '/signup',
        builder: (context, state) => const SingupPage(),
      ),

      GoRoute(
        path: '/forgot',
        builder: (context, state) => const ForgotPasswordPage(),
      ),

      GoRoute(
        path: '/verify',
        builder: (context, state) => const VerificationPage(),
      ),

      GoRoute(
        path: '/location',
        builder: (context, state) => const LocationPage(),
      ),

    ],
  );
}
