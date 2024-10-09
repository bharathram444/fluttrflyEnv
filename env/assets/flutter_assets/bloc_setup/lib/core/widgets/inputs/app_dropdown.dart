import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../styles/app_colors.dart';

class AppDropDown<T> extends StatefulWidget {
  const AppDropDown({
    super.key,
    this.hint,
    required this.items,
    required this.onSelected,
    this.defaultSelection,
    this.isMandatory = false,
    this.readOnly = false,
    this.listItemBuilder,
    this.headerBuilder,
    this.hintBuilder,
    this.closedFillColor,
  });

  final String? hint;
  final List<T> items;
  final Widget Function(BuildContext, T)? headerBuilder;
  final Widget Function(BuildContext, T, bool, void Function())?
      listItemBuilder;
  final T? defaultSelection;
  final bool isMandatory;
  final bool readOnly;
  final dynamic Function(T)? onSelected;
  final Widget Function(BuildContext context, String hint)? hintBuilder;
  final Color? closedFillColor;
  @override
  State<AppDropDown<T>> createState() => _AppDropDownState<T>();
}

class _AppDropDownState<T> extends State<AppDropDown<T>> {
  T? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.defaultSelection;
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: widget.readOnly,
      child: CustomDropdown<T>(
        hideSelectedFieldWhenExpanded: true,
        excludeSelected: false,
        closedHeaderPadding: const EdgeInsets.all(12.0),
        expandedHeaderPadding: const EdgeInsets.all(12.0),
        decoration: CustomDropdownDecoration(
          closedBorderRadius: BorderRadius.circular(8.0),
          expandedBorderRadius: BorderRadius.circular(8.0),
          closedBorder: Border.all(width: 0.4),
          closedFillColor: widget.closedFillColor?.withOpacity(0.5),
          expandedBorder: Border.all(width: 0.4),
          hintStyle: context.textTheme.titleMedium
              ?.copyWith(color: appColors.sc.nero, fontWeight: FontWeight.w500),
        ),
        hintText: widget.hint,
        items: widget.items,
        // hintBuilder: widget.hintBuilder,
        // headerBuilder: widget.headerBuilder,
        listItemBuilder: widget.listItemBuilder,
        onChanged: (p0) {},
        initialItem: _selectedValue,
      ),
    );
  }
}
