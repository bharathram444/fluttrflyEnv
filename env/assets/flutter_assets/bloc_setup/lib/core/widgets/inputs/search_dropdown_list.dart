import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

import '../../styles/app_colors.dart';

class SearchDropDownList<T> extends StatefulWidget {
  const SearchDropDownList({
    super.key,
    this.title,
    this.hint,
    required this.items,
    required this.onSelected,
    this.defaultSelection,
    this.isMandatory = false,
    this.readOnly = false,
    this.loading = false,
    this.listItemBuilder,
    this.headerBuilder,
    this.futureRequest,
    this.hintBuilder,
    this.closedFillColor,
  });

  final String? title;
  final String? hint;
  final List<T> items;
  final HeaderBuilder<T>? headerBuilder;
  final ListItemBuilder<T>? listItemBuilder;
  final HintBuilder? hintBuilder;
  final Future<List<T>> Function(String)? futureRequest;
  final T? defaultSelection;
  final bool isMandatory;
  final bool readOnly;
  final bool loading;
  final Color? closedFillColor;
  final void Function(T item) onSelected;

  @override
  State<SearchDropDownList<T>> createState() => _SearchDropDownListState<T>();
}

class _SearchDropDownListState<T> extends State<SearchDropDownList<T>> {
  T? _selectedValue;
  final scrollCtlr = ScrollController();

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.defaultSelection;
  }

  @override
  Widget build(BuildContext context) {
    var border = Border.all(width: 0.4, color: appColors.ms.black(context));
    var borderRadius = BorderRadius.circular(8.0);
    var fillColor = appColors.ms.white(context);
    const headerPadding = const EdgeInsets.all(16.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title.containsValidValue) ...[
          CaptionText(
              title: widget.title.valueOrEmpty, isRequired: widget.isMandatory),
          SpacerX.p4(),
        ],
        AbsorbPointer(
          absorbing: widget.readOnly || widget.loading,
          child: CustomDropdown<T>.searchRequest(
            hideSelectedFieldWhenExpanded: true,
            excludeSelected: false,
            closedHeaderPadding: headerPadding,
            expandedHeaderPadding: headerPadding,
            itemsScrollController: scrollCtlr,
            decoration: CustomDropdownDecoration(
                expandedFillColor: fillColor,
                closedFillColor: fillColor,
                closedSuffixIcon:
                    widget.loading ? const CircularProgressIndicator() : null,
                closedBorder: border,
                expandedBorder: border,
                closedBorderRadius: borderRadius,
                expandedBorderRadius: borderRadius,
                hintStyle: TextStyles.h9(context),
                searchFieldDecoration: SearchFieldDecoration(
                    fillColor: appColors.shad.e20(context)),
                listItemDecoration: ListItemDecoration(
                    selectedColor: appColors.shad.e60(context))),
            listItemPadding: const EdgeInsets.all(4.0),
            hintBuilder: widget.hintBuilder,
            futureRequest: widget.futureRequest,
            hintText: widget.hint,
            items: widget.items,
            headerBuilder: widget.headerBuilder,
            listItemBuilder: widget.listItemBuilder,
            onChanged: (p0) {
              if (p0 == null) return;
              widget.onSelected(p0);
            },
            initialItem: _selectedValue,
          ),
        ),
        SpacerX.p4(),
      ],
    );
  }
}
