import 'package:flutter/material.dart';

class FailureWidget extends StatelessWidget {

  const FailureWidget({
    required this.error,
    this.onRefresh,
    super.key,
  });

  final String error;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(error, style: const TextStyle(color: Colors.red, fontSize: 20), textAlign: TextAlign.center),
          const SizedBox(height: 12),
          OutlinedButton(key: const Key('refresh-btn'), onPressed: onRefresh, child: const Text('REFRESH')),
        ],
      ),
    );
  }
}
