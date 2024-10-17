import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../../../core/base/async_value_error.dart';
import '../../../../core/core.dart';
import '../../../../core/styles/app_icon.dart';
import '../providers/auth_provider.dart';
import '../providers/log_in_provider.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userIdController = TextEditingController(text: '');
    final passwordController = TextEditingController(text: '');
    ref.listen(logInProvider, (_, next) {
      next.showAlertDialogOnError(context);
      next.maybeWhen(
          orElse: () {},
          data: (data) => ref.read(authProvider.notifier).authCheckRequested());
    });
    return ScaffoldX(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: context.sizeOfHeight),
          child: SpacedColumn(
            margin: const EdgeInsets.all(16.0),
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                    width: context.sizeOfWidth * 0.6,
                    height: context.sizeOfHeight * 0.6,
                    child: AppIcons.logoName.toWidget()),
              ),
              Expanded(
                child: SpacedColumn(
                  mainAxisAlignment: MainAxisAlignment.start,
                  defaultHeight: 12,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppTextField(
                      labelText: 'Enter your email',
                      controller: userIdController,
                      showEditIcon: false,
                      prefixIcon: const Icon(Icons.person_2),
                    ),
                    AppTextField.password(controller: passwordController),
                    ButtonX.primaryButton(
                      context: context,
                      loading: ref.watch(logInProvider).isLoading,
                      label: 'Log in',
                      onPressed: () {
                        ref.read(logInProvider.notifier).login(
                            userIdController.text, passwordController.text);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
