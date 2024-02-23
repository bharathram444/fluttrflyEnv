import 'package:flutter/material.dart';

class CaptionText extends StatelessWidget {
  const CaptionText({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Text(text, style: Theme.of(context).textTheme.bodySmall);
}
