import 'package:flutter/material.dart';

class AppBarSearchBar extends StatefulWidget  {
  const AppBarSearchBar({
    required this.hintText,
    required this.onSearch,
    required this.onCancel,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final Function(String) onSearch;
  final Function() onCancel;

  @override
  State<AppBarSearchBar> createState() => _AppBarSearchBarState();
}

class _AppBarSearchBarState extends State<AppBarSearchBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: _controller,
        focusNode: _focusNode,
        onSubmitted: (query) {
          _focusNode.unfocus();
          widget.onSearch(query);
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          prefixIcon: const Icon(Icons.search),
          hintText: widget.hintText,
          suffixIcon: IconButton(
            key: const Key('clear-search'),
            onPressed: _clearField,
            icon: const Icon(Icons.clear),
          ),
        ),
        textInputAction: TextInputAction.search,
      ),
    );
  }

  void _clearField() {
    widget.onCancel();
    _controller.clear();
    _focusNode.unfocus();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _controller.dispose();
  }
}
