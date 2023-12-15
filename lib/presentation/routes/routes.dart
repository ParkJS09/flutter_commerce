import 'package:flutter_commerce/presentation/routes/route_path.dart';
import 'package:go_router/go_router.dart';

import '../home/home_page.dart';
import '../splash/splash_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: RoutePath.splash,
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: RoutePath.home,
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
  initialLocation: RoutePath.splash,
);
