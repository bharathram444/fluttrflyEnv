import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

typedef DateCallback = void Function(DateTime);

class AppDateField extends StatefulWidget {

  const AppDateField({
    required this.onDateSelected, required this.title, Key? key,
    this.initialDate,
    this.startDate,
    this.endDate,
    this.readOnly,
    this.isMandatory = false,
    this.prefixIcon,
    this.hinttext,
  }) : super(key: key);

  final DateCallback onDateSelected;

  final String title;
  final String? hinttext;
  final String? initialDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool? readOnly;
  final Widget? prefixIcon;
  final bool isMandatory;
  @override
  State<AppDateField> createState() => _AppDateFieldState();
}

class _AppDateFieldState extends State<AppDateField> {
  late TextEditingController _dateController;

  @override
  Widget build(BuildContext context) {
    final startDate = widget.startDate ??
        DateTime.now().subtract(const Duration(days: 365 * 100));
    final endDate = widget.endDate ?? DateTime.now();

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
              _openDatePicker(context, startDate, endDate);
            }
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            hintText: widget.hinttext,
            counterText: '',
            suffixIcon: const Icon(Icons.calendar_month),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController(text: widget.initialDate);
  }

  void _openDatePicker(
      BuildContext context, DateTime startDate, DateTime endDate) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: startDate,
      lastDate: endDate,
      locale: const Locale('en', 'IN'),
      fieldHintText: 'dd/mm/yyyy',
    ).then((value) {
      if (value != null) {
        widget.onDateSelected(value);
        _dateController.text = DateFormat('dd-MM-yyyy').format(value);
      }
    });
  }
}
