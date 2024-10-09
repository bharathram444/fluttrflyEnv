import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttrfly/styles/know_Your_colors.dart';
import 'package:go_router/go_router.dart';

import '../../app/ui/home_screen.dart';
import '../../app/ui/splash_screen.dart';
import 'app_route_paths.dart';
import '../../features/auth/presentation/ui/login_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoute.initial.path,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoute.initial.path,
        name: AppRoute.initial.name,
        pageBuilder: (context, state) =>
            const MaterialPage(child: SplashScreen()),
      ),
      GoRoute(
        path: AppRoute.logIn.path,
        name: AppRoute.logIn.name,
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen()),
      ),
      GoRoute(
          path: AppRoute.home.path,
          name: AppRoute.home.name,
          pageBuilder: (context, state) =>
              const MaterialPage(child: HomeScreen()),
          routes: [
            /// You can know your colors.
            GoRoute(
                path: AppRoute.knowYourColors.pageName,
                name: AppRoute.knowYourColors.name,
                pageBuilder: (context, state) =>
                    const MaterialPage(child: KnowYourColors())),
          ]),
    ],
  );
});
