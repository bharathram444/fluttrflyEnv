import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../features/auth/presentation/cubit/auth/auth_cubit.dart';
import '../../core/core.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldX(
      title: 'App Name',
      appToolbarHeight: 80,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                              onTapConfirm: () =>
                                  context.read<AuthCubit>().signOut(),
                            )),
                  ),
                ],
              ),
            ),
            // AppAddressField(
            //   onChange: ({address, fullAddress, geoLocation}) {
            //     print(address);
            //     print(fullAddress);
            //     print(geoLocation);
            //   },
            // ) done
            // AppTextField.password(controller: TextEditingController()) done
            // ImageSelectionWidget(
            //     onImage: (file) {},
            //     title: 'title',
            //     placeholder: Icon(Icons.abc)) done

            // TimeSelectionField(onTimeSelected: (time) {}) done
          ],
        ),
      ),
    );
  }
}
