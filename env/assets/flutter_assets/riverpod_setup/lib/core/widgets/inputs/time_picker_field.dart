import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class TimeSelectionField extends HookConsumerWidget {
  const TimeSelectionField({
    super.key,
    this.labelText,
    required this.onTimeSelected,
    this.initialTime,
    this.readOnly = false,
    this.hintText,
    this.suffixIcon = const Icon(Icons.access_time),
    this.isRequired = false,
    this.borderColor = Colors.white,
  });

  final String? labelText;
  final String? initialTime;
  final bool readOnly;
  final Function(String time) onTimeSelected;
  final String? hintText;
  final Widget? suffixIcon;
  final bool isRequired;
  final Color borderColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(
        text: initialTime.containsValidValue ? initialTime : '');
    final dateTime = DateTime.tryParse(initialTime ?? '');
    final selectedTime = useState<TimeOfDay?>(
        TimeOfDay.fromDateTime(dateTime ?? DateTime.now()));
    final selectedAmPm = useState<String?>(null);

    // ignore: unused_element
    void showTimePickerX() {
      showTimePicker(
        context: context,
        initialTime: selectedTime.value ?? TimeOfDay.now(),
      ).then((value) {
        if (value != null) {
          final String time = DFU.formatTimeOfDay(value);
          onTimeSelected(time);
          selectedTime.value = value;
          final formatter = NumberFormat('00');
          final timeFormat =
              '${formatter.format(value.hour)}:${formatter.format(value.minute)}:${formatter.format(value.hourOfPeriod)}';
          final amPm = ' ${value.period.name.toUpperCase()}';
          selectedAmPm.value = amPm;
          controller.text = timeFormat;
        }
      });
    }

    return SpacedColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      defaultHeight: 4.0,
      children: [
        TextField(
          onTap: () {
            if (readOnly) return;
            showTimePickerX();
          },
          controller: controller,
          decoration: InputDecoration(
            labelText: labelText,
            contentPadding: const EdgeInsets.all(16.0),
            suffixIcon: selectedAmPm.value.isNotNull
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        selectedAmPm.value ?? '--',
                      ),
                    ],
                  )
                : suffixIcon,
            counterText: '',
          ),
          obscuringCharacter: '*',
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
