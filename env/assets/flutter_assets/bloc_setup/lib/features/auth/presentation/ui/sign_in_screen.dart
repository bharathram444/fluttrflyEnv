import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../../../core/core.dart';
import '../cubit/auth/auth_cubit.dart';
import '../cubit/sign_in/sign_in_cubit.dart';
import 'widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SignInCubit, SignInState>(
        listener: (_, state) {
          state.maybeWhen(
            orElse: () {},
            success: context.cubit<AuthCubit>().authCheckRequested,
            failure: (failure) => DialogsX.showErrorDialog(
              context,
              title: 'Authentication Error',
              content: failure.error,
              onTapDismiss: context.close,
            ),
          );
        },
        child: const SignInForm(),
      ),
    );
  }
}
