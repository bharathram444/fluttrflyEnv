import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../app/ui/home_screen.dart';
import '../../app/ui/splash_screen.dart';
import '../../features/auth/presentation/ui/sign_in_screen.dart';
import 'app_route_paths.dart';

class AppRouterConfig {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();

  static final context = parentNavigatorKey.currentState?.context;

  static final router = GoRouter(
    navigatorKey: parentNavigatorKey,
    initialLocation: AppRoute.initial.path,
    routes: [
      GoRoute(
        path: AppRoute.initial.path,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoute.logIn.path,
        builder: (context, state) => SignInScreen(),
      ),
      GoRoute(
        path: AppRoute.home.path,
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
