import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../styles/app_colors.dart';

enum FieldTypes { password, normal }

class AppTextField extends HookConsumerWidget {
  AppTextField({
    super.key,
    this.initialValue,
    this.inputFormatters,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.inputType = TextInputType.text,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength = 255,
    this.readOnly = false,
    this.helperText,
    this.hintText,
    this.labelText,
    this.title,
    this.prefixIcon,
    this.suffixIcon,
    this.autofocus = false,
    this.obscureText = false,
    this.isMandatory = false,
    this.showEditIcon = true,
    this.contentPaddingHorizontal = 16.0,
    this.contentPaddingVertical = 16.0,
    this.labelAndHintStyle,
    TextEditingController? controller,
    this.fieldTypes = FieldTypes.normal,
    this.textInputAction = TextInputAction.done,
  }) {
    this.controller = controller ?? TextEditingController();
    if (initialValue?.isNotEmpty == true) {
      this.controller?.text = initialValue!;
    }
  }

  final FieldTypes fieldTypes;
  final String? initialValue;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final bool isMandatory;
  final TextInputType inputType;
  final int minLines;
  final int maxLines;
  final int maxLength;
  final bool readOnly;
  final String? helperText;
  final String? hintText;
  final String? labelText;
  final TextStyle? labelAndHintStyle;
  final String? title;
  final Widget? prefixIcon;
  final SufFixHolder? suffixIcon;
  late final TextEditingController? controller;
  final bool autofocus;
  final bool obscureText;
  final bool showEditIcon;
  final GestureTapCallback? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;

  AppTextField.password({
    Key? key,
    required TextEditingController controller,
  }) : this(
            key: key,
            labelText: 'Enter your password',
            controller: controller,
            prefixIcon: const Icon(Icons.lock_rounded),
            showEditIcon: false,
            fieldTypes: FieldTypes.password);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggle = useState<bool>(true);
    final TextStyle? textStyle =
        labelAndHintStyle ?? TextStyles.h8Bold(context);
    final TextStyle? textStyleForHint =
        labelAndHintStyle?.copyWith(color: appColors.ms.textBlack50(context)) ??
            TextStyles.h8Bold(context)
                ?.copyWith(color: appColors.ms.textBlack50(context));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.containsValidValue) ...[
          CaptionText(title: title.valueOrEmpty, isRequired: isMandatory),
          SpacerX.p4(),
        ],
        TextField(
          onTap: onTap,
          controller: controller,
          obscureText:
              fieldTypes == FieldTypes.password ? toggle.value : obscureText,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            hintStyle: textStyleForHint,
            labelStyle: textStyle,
            contentPadding: EdgeInsets.symmetric(
                horizontal: contentPaddingHorizontal,
                vertical: contentPaddingVertical),
            helperText: helperText,
            helperStyle: context.textTheme.labelSmall
                ?.copyWith(fontSize: 10, color: appColors.sc.liteRed),
            suffixIcon: !readOnly
                ? suffixIcon.isNotNull
                    ? suffixIcon
                    : fieldTypes == FieldTypes.password
                        ? SufFixHolder(children: [visibility(toggle)])
                        : null
                : null,
            prefixIcon: prefixIcon,
            filled: readOnly,
            fillColor: appColors.ms.readOnly(context),
            counterText: '',
          ),
          style: TextStyle(
              fontSize: 18,
              fontWeight: obscureText ? FontWeight.bold : FontWeight.normal),
          cursorColor: context.isDakMode ? appColors.sc.whiteS : appColors.sc.nero,
          obscuringCharacter: '•',
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          keyboardType: inputType,
          minLines: minLines,
          maxLines: maxLines,
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          textCapitalization: TextCapitalization.none,
          readOnly: readOnly,
          autocorrect: false,
          autofocus: autofocus,
        ),
      ],
    );
  }

  IconButton visibility(ValueNotifier<bool> toggle) {
    return IconButton(
      visualDensity: VisualDensity.compact,
      onPressed: () => toggle.value = !toggle.value,
      icon: Icon(toggle.value ? Icons.visibility_off : Icons.visibility),
    );
  }
}

class SufFixHolder extends StatelessWidget {
  final List<Widget> children;

  const SufFixHolder({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: children,
    );
  }
}
