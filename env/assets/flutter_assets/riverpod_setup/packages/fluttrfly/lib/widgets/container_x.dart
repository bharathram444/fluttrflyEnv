import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class ContainerX extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const ContainerX({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    this.padding = const EdgeInsets.all(12),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorX.instance.shad.e30(context),
          borderRadius: const BorderRadius.all(Radius.circular(21)),
          border: Border.all(
              color: ColorX.instance.ms.greyTransparent20(context), width: 1)),
      width:  MediaQuery.sizeOf(context).width,
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}
