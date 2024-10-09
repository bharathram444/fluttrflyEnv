import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AsyncValueError on AsyncValue {
  void showAlertDialogOnError(
    BuildContext context, {
    bool? barrierDismissible,
    void Function()? defaultOnPressed,
    // required String error,
  }) {
    if (!isLoading && hasError) {
      if (error is Failure) {
        final Failure failure = error as Failure;
        DialogsX.showErrorDialog(
          context,
          content: failure.error,
          barrierDismissible: barrierDismissible ?? true,
          onTapDismiss: () {
            if (defaultOnPressed != null) {
              defaultOnPressed();
            }
          },
        );
      } else {
        DialogsX.showErrorDialog(
          context,
          title: 'Oops',
          content: error.toString(),
          onTapDismiss: context.exit,
        );
      }
    }
  }
}
