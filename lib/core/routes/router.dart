import 'package:go_router/go_router.dart';
import 'package:store_app/features/auth/infraestructure/presentation/screens/get_started_screen.dart';
import 'package:store_app/features/main/infraestructure/presentation/screens/main_screen.dart';
import 'package:store_app/features/splash/splash_screen.dart';

final goRouter = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: "/splash",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/main",
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: "/getStarted",
      builder: (context, state) => const GetStartedScreen(),
    ),
  ],
);
