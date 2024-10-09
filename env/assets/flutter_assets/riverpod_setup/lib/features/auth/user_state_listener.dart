import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/router/app_route_paths.dart';
import 'presentation/providers/auth_provider.dart';


class UserStateListener {
  final WidgetRef ref;
  final GoRouter appRouter;
  UserStateListener(this.ref, this.appRouter);
  void setupListener() => ref.listen(
        authProvider, (_, state) => _handleUserStateChange(state, appRouter));

  void _handleUserStateChange(AuthState state, GoRouter appRouter) {
    state.when(
        loading: () => appRouter.go(AppRoute.initial.path),
        authenticated: () => appRouter.go(AppRoute.home.path),
        unAuthenticated: () => appRouter.go(AppRoute.logIn.path));
  }
}
