import 'package:flutter/material.dart';

class SimpleInfoWidget extends StatelessWidget {

  const SimpleInfoWidget({
    required this.icon,
    required this.title,
    required this.content,
    super.key,
  });

  final IconData icon;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title.toUpperCase(), style: Theme.of(context).textTheme.caption),
                const SizedBox(height: 8),
                Text(content, style: const TextStyle(fontSize: 15),maxLines: 2,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
