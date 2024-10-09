import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../../../../core/core.dart';
import '../../../../../core/styles/app_icon.dart';
import '../../cubit/sign_in/sign_in_cubit.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final username = TextEditingController(text: ''); // Administrator
  final password = TextEditingController(text: ''); // Axiom@1811321
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                            controller: username,
                            showEditIcon: false,
                            prefixIcon: const Icon(Icons.person_2),
                          ),
                          AppTextField.password(controller: password),
                          BlocBuilder<SignInCubit, SignInState>(
                            builder: (_, state) => ButtonX.primaryButton(
                              context: context,
                              loading: state.isLoading,
                              label: 'LOGIN',
                              onPressed: () {
                                context
                                    .cubit<SignInCubit>()
                                    .login(username.text, password.text);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
