import 'package:flutter/material.dart';

typedef StringCallback = void Function(String);

class SimpleSearchWidget extends StatefulWidget {
  const SimpleSearchWidget({
    required this.label,
    required this.onSubmit,
    this.onChanged,
    this.minCharsForCallback = 3,
    Key? key, 
  }) : super(key: key);

  final int minCharsForCallback;
  final StringCallback onSubmit;
  final String label;
  final StringCallback? onChanged;

  @override
  State<SimpleSearchWidget> createState() => _SimpleSearchWidgetState();
}

class _SimpleSearchWidgetState extends State<SimpleSearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: widget.onSubmit,
      onChanged: widget.onChanged,
      controller: _searchController,
      focusNode: _focusNode,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: widget.label,
        prefixIcon: const Icon(Icons.search),
        contentPadding: const EdgeInsets.all(12),
        suffix: InkWell(
          onTap: () {
            if (_searchController.text.isNotEmpty) {
              setState(() {
                _searchController.clear();
                if (!FocusScope.of(context).hasPrimaryFocus) {
                  FocusScope.of(context).unfocus();
                }
                widget.onSubmit('');
              });
            }
          },
          child: const Icon(Icons.clear),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
