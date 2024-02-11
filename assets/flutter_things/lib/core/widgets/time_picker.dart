import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets.dart';

typedef TimeCallback = void Function(String);

class SVSTimePicker extends StatefulWidget {
  const SVSTimePicker({
    required this.title,
    required this.onTimeSelected,
    Key? key,
  }) : super(key: key);
  final String title;
  final TimeCallback onTimeSelected;

  @override
  State<SVSTimePicker> createState() => _SVSTimePickerState();
}

class _SVSTimePickerState extends State<SVSTimePicker> {
  late Time _time;
  final TextEditingController _timeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _time = Time(
      hour: DateTime.now().hour,
      minute: DateTime.now().minute,
      second: DateTime.now().second,
    );
  }

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: Color(0xff72787e)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(2),
        borderSide: const BorderSide(color: Color(0xff72787e)),
      ),
      contentPadding: const EdgeInsets.all(12),
      counter: const SizedBox(width: 0, height: 0),
    );

    const titleSpacing = SizedBox(height: 4);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CaptionText(text: widget.title),
        titleSpacing,
        TextField(
          controller: _timeController,
          readOnly: true,
          onTap: () => _openTimePicker(context),
          decoration: inputDecoration.copyWith(
            suffixIcon: IconButton(
              onPressed: () => _openTimePicker(context),
              icon: const Icon(Icons.schedule_outlined),
            ),
          ),
        ),
      ],
    );
  }

  void _openTimePicker(BuildContext context) {
    Navigator.of(context).push(
      showPicker(
        width: double.infinity,
        context: context,
        value: Time(hour: _time.hour, minute: _time.minute),
        // minHour: 9,
        // maxHour: 23,
        onChange: (newTime) {
          setState(() {
            final formatter = NumberFormat('00');
            _time = newTime;
            final timeFormat =
                '${formatter.format(newTime.hour)}:${formatter.format(newTime.minute)}:${formatter.format(newTime.second)}';

            _timeController.text = timeFormat;
            widget.onTimeSelected(timeFormat);
          });
        },
      ),
    );
  }
}
