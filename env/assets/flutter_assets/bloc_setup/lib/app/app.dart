import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../core/di/injector.dart';
import '../core/router/app_route_paths.dart';
import '../core/router/app_router.dart';
import '../features/auth/presentation/cubit/auth/auth_cubit.dart';
import '../features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => $sl.get<AuthCubit>()..authCheckRequested()),
        BlocProvider(create: (_) => $sl.get<SignInCubit>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (_, state) {
              final routeContext = AppRouterConfig.context;
              if (routeContext.isNull) return;
              state.when(
                loading: () => AppRoute.initial.go(routeContext!),
                authenticated: () => AppRoute.home.go(routeContext!),
                unAuthenticated: () => AppRoute.logIn.go(routeContext!),
              );
            },
          ),
        ],
        child: MaterialApp.router(
          title: 'Bloc App',
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: BAppTheme.lightTheme,
          darkTheme: BAppTheme.darkTheme,
          routerConfig: AppRouterConfig.router,
        ),
      ),
    );
  }
}
