import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../core/core.dart';
import '../../features/auth/presentation/providers/auth_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldX(
      title: 'App Name',
      appToolbarHeight: 80,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContainerX(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome,', style: TextStyles.h7Bold(context)),
                  Text('${context.user.fullName}',
                      style: TextStyles.h5Gray(context)),
                  gapH48,
                  Align(
                    alignment: Alignment.topRight,
                    child: ButtonX(
                        label: 'Logout',
                        icon: Icons.logout,
                        onPressed: () => DialogsX.askForConfirmation(
                              context,
                              content: 'Are you sure you want to logout!',
                              buttonText: 'No',
                              confirmBtnText: 'Yes',
                              title: 'Logout',
                              onTapConfirm: () {
                                ref.read(authProvider.notifier).signOut();
                              },
                            )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
