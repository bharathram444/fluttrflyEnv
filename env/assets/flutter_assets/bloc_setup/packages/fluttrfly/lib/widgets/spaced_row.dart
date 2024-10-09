import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class SpacedRow extends StatelessWidget {
  const SpacedRow({
    super.key,
    this.defaultHeight = 4.0,
    this.margin,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisSize = MainAxisSize.min,
    this.divider,
    required this.children,
  });

  final double defaultHeight;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisSize mainAxisSize;
  final Widget? divider;
  final EdgeInsets? margin;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final spacerWidget = SpacerX(height: defaultHeight);

    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        // children: children.expand((widget) => [widget, spacerWidget, if(divider != null) divider!]).toList(),
        children: [
          for (int i = 0; i < children.length; i++) ...[
            Expanded(child: children[i]),
            if (i != children.length - 1 && divider != null) ...[
              divider ?? const SizedBox.shrink(),
            ],
            spacerWidget,
          ],
        ],
      ),
    );
  }
}
