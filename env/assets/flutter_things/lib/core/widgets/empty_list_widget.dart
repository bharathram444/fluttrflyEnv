import 'package:flutter/material.dart';

class EmptyListWidget extends StatelessWidget {

  const EmptyListWidget({
    required this.title,
    required this.onRefresh,
    super.key,
  });

  final String title;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 12),
          OutlinedButton(onPressed: onRefresh, child: const Text('REFRESH')),
        ],
      ),
    );
  }
}
