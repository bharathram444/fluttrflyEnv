import 'dart:async';

import 'package:flutter/material.dart';

class SimpleSearchBar extends StatefulWidget {
  const SimpleSearchBar({
    required this.hintText,
    required this.onSearchLCV,
    required this.onCancel,
    super.key,
  });

  final String hintText;
  final Function(String) onSearchLCV;
  final Function() onCancel;

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  Timer? _debounce;

  void _onSearch(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.onSearchLCV(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(4.0),
        );
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: _onSearch,
      decoration: InputDecoration(
        constraints: const BoxConstraints(maxHeight: 40, minHeight: 40),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        border: outlineInputBorder,
        hintText: widget.hintText,
        filled: true,
        fillColor: Colors.white,
        disabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        suffixIcon: IconButton(
          key: const Key('clear-search'),
          onPressed: _clearField,
          icon: const Icon(Icons.clear),
        ),
      ),
      textInputAction: TextInputAction.search,
      maxLines: 1,
    );
  }

  void _clearField() {
    if (_controller.text.isNotEmpty) {
      widget.onCancel();
      _controller.clear();
      _focusNode.unfocus();
      setState(() {});
    }
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _controller.dispose();
  }
}
