import 'package:flutter/material.dart';
import '../utils/utils.dart';

typedef TimeCallBack = void Function(TimeOfDay);

class AppTimeFiled extends StatefulWidget {
  const AppTimeFiled({
    required this.pickedTime,
    required this.title,
    Key? key,
    this.readOnly,
    this.isMandatory = false,
    this.suffixIcon,
    this.hinttext,
  }) : super(key: key);

  final TimeCallBack pickedTime;

  final String title;
  final String? hinttext;
  final bool? readOnly;
  final Widget? suffixIcon;
  final bool isMandatory;
  @override
  State<AppTimeFiled> createState() => _AppTimeFiledState();
}

class _AppTimeFiledState extends State<AppTimeFiled> {
  late TextEditingController _dateController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title.isNotEmpty) ...[
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontStyle: FontStyle.italic,
                        letterSpacing: .8,
                      ),
                ),
                if (widget.isMandatory)
                  const TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 6),
        ],
        TextFormField(
          controller: _dateController,
          readOnly: true,
          onTap: () {
            if (widget.readOnly == true) {
              return;
            } else {
              _openDatePicker(context);
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            hintText: widget.hinttext,
            counterText: '',
            suffixIcon: widget.suffixIcon,
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
  }

  void _openDatePicker(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
      initialEntryMode: TimePickerEntryMode.input,
    ).then((value) {
      if (value != null) {
        _dateController.text = value.formatToString();
        widget.pickedTime(value);
      }
    });
  }
}
