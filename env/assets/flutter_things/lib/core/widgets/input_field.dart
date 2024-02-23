import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/utils.dart';
import 'widgets.dart';

const _inputFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(16),
  counterText: '',
);

class InputField extends StatelessWidget {
  InputField({
    required this.title,
    this.onChanged,
    this.initialValue,
    this.inputType = TextInputType.text,
    this.minLines = 1,
    this.maxLines = 1,
    this.maxLength = 255,
    this.textCapitalization = TextCapitalization.none,
    this.readOnly = false,
    this.ismandatory = false,
    TextEditingController? controller,
    Key? key,
  }) : super(key: key) {
    this.controller = controller ?? TextEditingController();
    if (initialValue.containsValidValue) {
      this.controller!.text = initialValue!;
    }
  }

  final String title;
  final String? initialValue;
  final Function(String)? onChanged;
  final TextInputType inputType;
  final int minLines;
  final int maxLines;
  final int maxLength;
  final TextCapitalization textCapitalization;
  final bool readOnly;
  final bool ismandatory;
  late final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CaptionText(text: title.toUpperCase()),
        TextField(
          controller: controller,
          decoration: _inputFieldDecoration,
          onChanged: onChanged,
          keyboardType: inputType,
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          textCapitalization: textCapitalization,
          textInputAction: TextInputAction.done,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          readOnly: readOnly,
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
