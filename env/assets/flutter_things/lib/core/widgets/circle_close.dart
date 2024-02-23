import 'package:flutter/material.dart';

class CircleClose extends StatelessWidget {
  const CircleClose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: const Icon(Icons.clear),
    );
  }
}
