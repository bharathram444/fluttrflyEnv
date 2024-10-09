import 'package:fluttrfly/fluttrfly.dart';
import 'package:fluttrfly/widgets/dialogs/dialog_widget.dart';
import 'package:fluttrfly/widgets/dialogs/confirm_dialog_widget.dart';
import 'package:fluttrfly/widgets/dialogs/success_message_widget.dart';
import 'package:flutter/material.dart';


class DialogsX {
  static Future<T?> _showGeneralDialog<T>(
    BuildContext context, {
    required String barrierLabel,
    required Widget dialogContent,
    bool barrierDismissible = true,
    Duration transitionDuration = const Duration(milliseconds: 300),
    bool useRootNavigator = true,
  }) async {
    return await showGeneralDialog<T>(
      context: context,
      barrierLabel: barrierLabel,
      barrierDismissible: barrierDismissible,
      useRootNavigator: useRootNavigator,
      transitionDuration: transitionDuration,
      pageBuilder: (context, animation, secondaryAnimation) => dialogContent,
    );
  }

  static Future<T?> showSuccessMessage<T>(
    BuildContext context, {
    String? title,
    required String content,
    String buttonText = 'Okay',
    bool barrierDismissible = true,
    bool autoClose = true,
  }) async {
    if (autoClose) {
      Future.delayed(const Duration(milliseconds: 900), context.close);
    }

    return _showGeneralDialog<T>(
      context,
      barrierLabel: 'SuccessDialog',
      dialogContent: SuccessMessageWidget(
        content: content,
        buttonText: buttonText,
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  static Future<void> showErrorDialog(
    BuildContext context, {
    String? title,
    required String content,
    VoidCallback? onTapDismiss,
    bool barrierDismissible = true,
  }) async {
    return _showGeneralDialog<void>(
      context,
      barrierLabel: 'ErrorDialog',
      dialogContent: PopScope(
        canPop: barrierDismissible,
        child: DialogWidget(
          title: title,
          message: content,
          buttonText: 'OKAY',
          onTapDismiss: onTapDismiss ?? context.exit,
          dialogType: DialogType.error,
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  static Future<void> showSuccessDialog(
    BuildContext context, {
    String? title,
    required String content,
    VoidCallback? onTapDismiss,
    bool barrierDismissible = true,
  }) async {
    return _showGeneralDialog<void>(
      context,
      barrierLabel: 'SuccessDialog',
      dialogContent: PopScope(
        canPop: barrierDismissible,
        child: DialogWidget(
          title: title,
          message: content,
          buttonText: 'OKAY',
          onTapDismiss: onTapDismiss ?? context.exit,
          dialogType: DialogType.success,
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  static Future<T?> askForConfirmation<T>(
    BuildContext context, {
    String? title,
    required String content,
    String buttonText = 'Cancel',
    String confirmBtnText = 'Okay',
    bool barrierDismissible = true,
    VoidCallback? onTapConfirm,
    VoidCallback? onTapButton,
  }) async {
    return _showGeneralDialog<T>(
      context,
      barrierLabel: 'ConfirmationDialog',
      dialogContent: PopScope(
        canPop: false,
        child: ConfirmDialogWidget(
          title: title,
          message: content,
          cancelButtonText: buttonText,
          confirmButtonText: confirmBtnText,
          onTapCancel: onTapButton ?? () => context.close(false),
          onTapConfirm: onTapConfirm ?? () => context.close(true),
        ),
      ),
      barrierDismissible: barrierDismissible,
      useRootNavigator: false,
    );
  }
}

enum DialogType {
  success,
  normal,
  warning,
  error,
  custom,
}

extension DialogTypeApi on DialogType {
  Color toColor() => switch (this) {
        DialogType.success =>  ColorX.instance.sc.success,
        DialogType.normal =>  ColorX.instance.sc.normal,
        DialogType.warning =>  ColorX.instance.sc.warning,
        DialogType.error =>  ColorX.instance.sc.error,
        DialogType.custom =>  ColorX.instance.sc.custom,
      };
}
