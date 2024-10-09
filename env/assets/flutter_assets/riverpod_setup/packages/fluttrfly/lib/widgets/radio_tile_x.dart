import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';


class AppRadioListTile extends StatelessWidget {
  final IdName record;
  final void Function(IdName r) onChanged;
  final String? value;
  

  const AppRadioListTile({
    super.key,
    required this.record,
    required this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      contentPadding: const EdgeInsets.all(0),
      dense: true,
      title: Text(record.name,
          style: context.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),),
      value: record.id,
      groupValue: value,
      onChanged: (r) => onChanged(record),
    );
  }
}
