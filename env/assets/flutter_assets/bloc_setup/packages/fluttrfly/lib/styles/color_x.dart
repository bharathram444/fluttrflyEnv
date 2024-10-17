import 'package:flutter/material.dart';

// Color Fun's

class CFunS {
  // Color Scheme
  ColorScheme cS(BuildContext c) => Theme.of(c).colorScheme;
  // Utility methods for theme-based color selection
  Color ldcs(BuildContext c, Color lightColor, Color darkColor) {
    return Theme.of(c).brightness == Brightness.light ? lightColor : darkColor;
  }
}

// Shades
class Shades {
  static final CFunS cFunS = CFunS();

  // 50 Shades
  Color e60(BuildContext c) => cFunS.cS(c).surfaceContainerHighest;
  Color e50(BuildContext c) => cFunS.cS(c).surfaceContainerHigh;
  Color e40(BuildContext c) => cFunS.cS(c).surfaceContainer;
  Color e30(BuildContext c) => cFunS.cS(c).surfaceContainerLow;
  Color e20(BuildContext c) => cFunS.cS(c).surface;
  Color e10(BuildContext c) => cFunS.cS(c).surfaceContainerLowest;
  Color eBright(BuildContext c) => cFunS.cS(c).surfaceBright;
  Color eSw2060(BuildContext c) => cFunS.cS(c).surfaceDim;
}

class StaticColors {
  // Static color constants
  final dark = const Color(0xFF121212);
  final blackS = Colors.black;
  final whiteS = const Color(0xFFFFFFFF);
  final deepWater = const Color(0XFF2D6DA6);
  final cerulean = const Color(0XFF52A8F2);
  final whiteSmoke = const Color(0XFFF5F5F5);
  final heartChakra = const Color(0XFF56BF7B);
  final bleachedSilk = const Color(0XFFF2F2F2);
  final nero = const Color(0XFF262626);
  final blues = const Color(0xFF395E8A);
  final ebony = const Color(0xff424140);
  final dustyGray = const Color(0xff8f8173);
  final unicornSilver = const Color(0xFFE8E8E8);
  final mintLeaf = const Color(0xFF07CEA5);

  // 100 shades of purple
  final mystic = const Color(0xFFF7F5FC);
  final blueBell = const Color(0xFF886FF5);
  final lavenderGray = const Color(0xffa08ee7);
  final royalPurple = const Color(0xFF5932E8);
  final nobel = const Color(0xffa9a8b5);
  final wisteria = const Color(0xff8874ae);

  // 100 shades of red
  final red = const Color(0xffFF0000);
  final mutedRed = const Color(0xffFF6961);
  final liteRed = const Color(0xFFf9AEAE);

  // dialog colors
  final success = const Color(0xFF61D800);
  final normal = const Color(0xFF179DFF);
  final warning = const Color(0xFFFF8B17);
  final error = const Color(0xFFFF4D17);
  final custom = const Color(0xFF707070);
  final defaultTextColor = const Color(0xFF707070);


  // 100 shades of gray
  final grey = const Color(0xff808080);
  final grey50 = const Color(0xFFFAFAFA);
  final grey100 = const Color(0xFFF5F5F5);
  final grey150 = const Color(0xFFF2F2F2);
  final grey200 = const Color(0xFFEEEEEE);
  final grey250 = const Color(0xFFFAFAFA);
  final grey300 = const Color(0xffE0E0E0);
  final grey400 = const Color(0xffBDBDBD);
  final grey500 = const Color(0xff9E9E9E);
  final grey600 = const Color(0xff757575);
  final grey650 = const Color(0xff686868);
  final grey700 = const Color(0xff616161);
  final grey750 = const Color(0xff515151);
  final grey800 = const Color(0xff424242);
  final grey850 = const Color(0xff313131);
  final grey900 = const Color(0xff212121);
}

class ModeSwitchColors {
  static final StaticColors sc = StaticColors();
  static final CFunS cFunS = CFunS();

// text color
  Color blue(BuildContext c) =>
      cFunS.ldcs(c, const Color(0xff1d4e89), sc.blues);
  Color textBlack80(BuildContext c) => cFunS.ldcs(c, sc.grey800, sc.grey200);
  Color textBlack50(BuildContext c) => cFunS.ldcs(c, sc.grey500, sc.grey500);

// 100 shades of black
  Color black80(BuildContext c) => cFunS.ldcs(c, sc.grey800, sc.grey200);
  Color black60(BuildContext c) => cFunS.ldcs(c, sc.grey600, sc.grey400);
  Color black50(BuildContext c) => sc.grey500;
  Color black40(BuildContext c) => cFunS.ldcs(c, sc.grey400, sc.grey600);
  Color black20(BuildContext c) => cFunS.ldcs(c, sc.grey200, sc.grey700);
  Color black10(BuildContext c) => cFunS.ldcs(c, sc.grey100, sc.grey700);
  Color black5(BuildContext c) => sc.grey50;

// transparent 4
  Color transparent(BuildContext c) => const Color(0x00000000);
  Color transparent80(BuildContext c) => const Color(0x70000000);
  Color greyTransparent20(BuildContext c) => const Color(0x20767676);
  Color greyTransparent80(BuildContext c) => const Color(0x80767676);

// background 6
  Color whiteSwNero(BuildContext c) =>
      cFunS.ldcs(c, sc.whiteS, sc.nero);
  Color appBackground(BuildContext c) =>
      cFunS.ldcs(c, const Color(0xF6FFFFFF), sc.grey900);
  Color? containerColor(BuildContext c) => cFunS.ldcs(
      c,
      cFunS.cS(c).primary.withAlpha(55),
      cFunS.cS(c).inversePrimary.withAlpha(55));
  Color containerHolderColor(BuildContext c) =>
      cFunS.ldcs(c, sc.whiteS, const Color(0xFF0A0A0A));
  Color black(BuildContext c) =>
      cFunS.ldcs(c, const Color(0xff000000), sc.whiteS);
  Color white(BuildContext c) =>
      cFunS.ldcs(c, sc.whiteS, const Color(0xff000000));
  Color headlineBoxColor(BuildContext c) =>
      cFunS.ldcs(c, sc.grey500, const Color(0xFFA44040));
  Color shimmerBase(BuildContext c) => cFunS.ldcs(c, sc.grey400, sc.grey800);
  Color shimmerHighlight(BuildContext c) =>
      cFunS.ldcs(c, sc.grey300, sc.grey700);
  Color readOnly(BuildContext c) =>
      cFunS.ldcs(c, cFunS.cS(c).outlineVariant, cFunS.cS(c).outline);
}

class ColorX {
  // Private constructor for singleton pattern
  ColorX._();

  // Static instance of ColorX (singleton)
  static final ColorX _instance = ColorX._();

  // Seed color for theme (default value)
  static Color _seed = Colors.purple;

  // Getters for seed-based colors (light and dark)
  Color get seedForLight => _seed.withAlpha(100);
  Color get seedForDark => _seed;

  // Method to set the seed color (user-defined)
  static void setSeed(Color seed) {
    _seed = seed;
  }

  // Static instance of Shades, StaticColors, ModeSwitchColors
  final Shades shad = Shades();
  final StaticColors sc = StaticColors();
  final ModeSwitchColors ms = ModeSwitchColors();

  // Singleton instance accessor
  static ColorX get instance => _instance;
}
