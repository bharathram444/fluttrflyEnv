import 'package:flutter/material.dart';

class AppDropDownWidget<T> extends StatefulWidget {
  const AppDropDownWidget({
    required this.title, required this.items, required this.onSelected, required this.itemBuilder, Key? key,
    this.defaultSelection,
    this.expanded =true,
  }) : super(key: key);

  final String title;
  final List<T> items;
  final DropdownMenuItem<String> Function(T value) itemBuilder;
  final String? defaultSelection;
  final bool expanded;
  final void Function(String) onSelected;

  @override
  State<AppDropDownWidget<T>> createState() => _AppDropDownWidgetState<T>();
}

class _AppDropDownWidgetState<T> extends State<AppDropDownWidget<T>> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.defaultSelection;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title.toUpperCase(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  letterSpacing: .8,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        DropdownButtonFormField<String>(
          isDense: false,
          isExpanded: widget.expanded,
          decoration:  InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          items: widget.items.map((e) => widget.itemBuilder(e)).toList(),
          value: _selectedValue,
          style: Theme.of(context).textTheme.titleSmall
              ?.copyWith(fontWeight: FontWeight.normal),
          onChanged: (selected) {
            if (selected != null) {
              widget.onSelected.call(selected);
              setState(() {
                _selectedValue = selected;
              });
            }
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
