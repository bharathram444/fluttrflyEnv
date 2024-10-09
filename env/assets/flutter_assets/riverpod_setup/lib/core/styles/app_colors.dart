import 'package:fluttrfly/fluttrfly.dart';



final appColors = ColorX.instance;

extension ShadesX on Shades {
  /// Ex: Color ez1022(BuildContext c) => CFunS().cS(c).surfaceTint;
}

extension StaticColorsX on StaticColors {
  /// Ex: final deepWater = const Color(0XFF2D6DA6);
}

extension ModeSwitchColorsX on ModeSwitchColors {
  /// Ex:   Color appBackground(BuildContext c) =>
  ///       cFunS.ldcs(c, const Color(0xF6FFFFFF), sc.grey900);
}
