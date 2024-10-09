import 'package:flutter/material.dart';

class SpacerX extends StatelessWidget {
  const SpacerX({super.key, this.height, this.width});

  final double? height;
  final double? width;

  factory SpacerX.p4() => const SpacerX(height: 4, width: 4);
  factory SpacerX.p8() => const SpacerX(height: 8, width: 8);
  factory SpacerX.p12() => const SpacerX(height: 12, width: 12);
  factory SpacerX.p24() => const SpacerX(height: 24, width: 24);
  factory SpacerX.p32() => const SpacerX(height: 32, width: 32);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
