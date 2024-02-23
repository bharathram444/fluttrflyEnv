import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets.dart';

class DateSelectorInputField extends StatefulWidget {
  const DateSelectorInputField({
    required this.title,
    required this.onSelected,
    required this.startDate,
    required this.endDate,
    this.dateFormat,
    this.initialSelectedDate,
    Key? key,
  }) : super(key: key);

  final String title;
  final Function(DateTime) onSelected;
  final DateFormat? dateFormat;
  final DateTime startDate;
  final DateTime endDate;
  final DateTime? initialSelectedDate;

  @override
  State<DateSelectorInputField> createState() => _DateSelectorInputFieldState();
}

class _DateSelectorInputFieldState extends State<DateSelectorInputField> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialSelectedDate;
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = widget.dateFormat ?? DateFormat('yyyy-MM-dd');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CaptionText(text: widget.title.toUpperCase()),
        ListTile(
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
          ),
          dense: true,
          onTap: _showDatePicker,
          contentPadding: const EdgeInsets.only(left: 12, right: 12),
          trailing: const Icon(Icons.calendar_today),
          title: _selectedDate == null
              ? null
              : Text(
                  dateFormat.format(_selectedDate!),
                  softWrap: true,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ],
    );
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _selectedDate == null ? DateTime.now() : _selectedDate!,
      firstDate: widget.startDate,
      lastDate: widget.endDate,
    ).then((value) {
      if (value != null) {
        widget.onSelected(value);
        _selectedDate = value;
        setState(() {});
      }
    });
  }
}
