import 'package:flutter/material.dart';
import "../utils/utils.dart";

Future<dynamic> showErrorDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return AlertDialog(
        backgroundColor: Colors.redAccent,
        content: Text(message, style: const TextStyle(color: Colors.white)),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OKAY',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      );
    },
  );
}

Future<dynamic> showSuccessDialog(
  BuildContext context,
  String message, {
  String? description,
}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return AlertDialog(
        backgroundColor: Colors.green,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
            if (description.containsValidValue) ...[
              Text(
                description!.split(',').join('\n'),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ],
        ),
        actions: [
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OKAY',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ],
      );
    },
  );
}
