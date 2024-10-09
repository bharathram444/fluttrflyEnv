import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/router/app_router.dart';
import '../features/auth/user_state_listener.dart';


class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final userStateListener = UserStateListener(ref, appRouter);
    userStateListener.setupListener();
    return MaterialApp.router(
      title: 'Axiom Services',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BAppTheme.lightTheme,
      darkTheme: BAppTheme.darkTheme,
      routerConfig: appRouter,
    );
  }
}
