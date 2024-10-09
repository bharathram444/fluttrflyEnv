import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../styles/app_colors.dart';

class AnimatedSearchBar extends StatelessWidget {
  AnimatedSearchBar({
    super.key,
    this.initialValue,
    this.inputFormatters,
    this.onChanged,
    this.onSubmitted,
    this.inputType = TextInputType.text,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength = 255,
    this.readOnly = false,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.autofocus = false,
    this.onTap,
    this.animatingTexts = const <String>[],
    TextEditingController? controller,
  }) {
    this.controller = controller ?? TextEditingController();
    if (initialValue?.isNotEmpty == true) {
      this.controller?.text = initialValue!;
    }
  }

  final String? initialValue;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final TextInputType inputType;
  final int minLines;
  final int maxLines;
  final int maxLength;
  final bool readOnly;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  late final TextEditingController? controller;
  final bool autofocus;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;
  final List<String> animatingTexts;

  @override
  Widget build(BuildContext context) {
    final textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide:  BorderSide(color: appColors.sc.unicornSilver),
    );

    return TextField(
      controller: controller,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      onTap: onTap,
      decoration: InputDecoration(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: Text(hintText.valueOrEmpty)),
            const SizedBox(width: 4.0),
            if(animatingTexts.isNotEmpty)...[
              AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: animatingTexts.map(RotateAnimatedText.new).toList(),
              ),
            ],
          ],
        ),
        border: textFieldBorder,
        enabledBorder: textFieldBorder,
        focusedBorder: textFieldBorder,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        counterText: '',
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: appColors.sc.unicornSilver,
      ),
      cursorColor: context.isDakMode ? appColors.sc.whiteS : appColors.sc.nero,
      textInputAction: TextInputAction.done,
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
    );
  }
}
