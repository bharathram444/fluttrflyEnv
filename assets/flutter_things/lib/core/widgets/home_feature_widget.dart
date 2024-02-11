import 'package:flutter/material.dart';

class HomeFeatureWidget extends StatelessWidget {

  const HomeFeatureWidget({
    required this.title,
    required this.icon,
    required this.onClick,
    super.key,
  });

  final String title;
  final Widget icon;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onClick,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: icon),
              const SizedBox(height: 12),
              Text(
                title.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
