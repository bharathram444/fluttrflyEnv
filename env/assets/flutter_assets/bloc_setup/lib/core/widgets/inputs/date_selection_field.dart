import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../styles/app_colors.dart';

class DateSelectionField extends StatelessWidget {
  const DateSelectionField({
    super.key,
    this.initialValue,
    this.readOnly = false,
    this.hintText,
    this.labelText,
    this.suffixIcon = const Icon(Icons.calendar_month_outlined),
    this.firstDate,
    this.lastDate,
    required this.onDateSelect,
    this.isRequired = false,
  });

  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? initialValue;
  final bool readOnly;
  final bool isRequired;
  final String? hintText;
  final String? labelText;
  final Widget suffixIcon;
  final Function(DateTime date) onDateSelect;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: initialValue);
    void showDatePickerDialog() async {
      final selectedDate = await showDatePicker(
        context: context,
        firstDate: firstDate ??
            DateTime.now().subtract(const Duration(days: 365 * 100)),
        lastDate: lastDate ?? DateTime.now(),
      );
      if (selectedDate != null) {
        final formattedDate = DFU.friendlyFormat(selectedDate);
        controller.text = formattedDate;
        onDateSelect(selectedDate);
      }
    }

    return SpacedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      defaultHeight: 4.0,
      children: [
        TextField(
          onTap: () {
            if (readOnly) return;
            showDatePickerDialog();
          },
          controller: controller,
          decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              hintStyle: context.textTheme.titleMedium?.copyWith(
                  color: appColors.sc.grey, fontWeight: FontWeight.w500),
              contentPadding: const EdgeInsets.all(16.0),
              suffixIcon: suffixIcon,
              counterText: '',
              fillColor: appColors.sc.bleachedSilk,
              filled: readOnly),
          textInputAction: TextInputAction.done,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          textCapitalization: TextCapitalization.none,
          readOnly: true,
          autocorrect: false,
        ),
      ],
    );
  }
}
