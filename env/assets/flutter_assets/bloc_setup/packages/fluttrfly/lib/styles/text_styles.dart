import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';


abstract class TextStyles {
// Here h1 is bigger than h15, means font size is decreased in Acceding oder. 
// Normal text style.
  static TextStyle? h1(BuildContext context) => context.textTheme.displayLarge;
  static TextStyle? h2(BuildContext context) => context.textTheme.displayMedium; 
  static TextStyle? h3(BuildContext context) => context.textTheme.displaySmall; 
  static TextStyle? h4(BuildContext context) => context.textTheme.headlineLarge;
  static TextStyle? h5(BuildContext context) => context.textTheme.headlineMedium; 
  static TextStyle? h6(BuildContext context) => context.textTheme.headlineSmall; 
  static TextStyle? h7(BuildContext context) => context.textTheme.titleLarge; 
  static TextStyle? h8(BuildContext context) => context.textTheme.bodyLarge;
  static TextStyle? h9(BuildContext context) => context.textTheme.titleMedium;
  static TextStyle? h10(BuildContext context) => context.textTheme.bodyMedium; 
  static TextStyle? h11(BuildContext context) => context.textTheme.titleSmall; 
  static TextStyle? h12(BuildContext context) => context.textTheme.labelLarge;
  static TextStyle? h13(BuildContext context) => context.textTheme.labelMedium; 
  static TextStyle? h14(BuildContext context) => context.textTheme.bodySmall; 
  static TextStyle? h15(BuildContext context) => context.textTheme.labelSmall; 
// Normal gray text style.
  static TextStyle? h1Gray(BuildContext context) => h1(context)?.copyWith(color: context.colorX.ms.textBlack50(context));
  static TextStyle? h2Gray(BuildContext context) => h2(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h3Gray(BuildContext context) => h3(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h4Gray(BuildContext context) => h4(context)?.copyWith(color: context.colorX.ms.textBlack50(context));
  static TextStyle? h5Gray(BuildContext context) => h5(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h6Gray(BuildContext context) => h6(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h7Gray(BuildContext context) => h7(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h8Gray(BuildContext context) => h8(context)?.copyWith(color: context.colorX.ms.textBlack50(context));
  static TextStyle? h9Gray(BuildContext context) => h9(context)?.copyWith(color: context.colorX.ms.textBlack50(context));
  static TextStyle? h10Gray(BuildContext context) => h10(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h11Gray(BuildContext context) => h11(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h12Gray(BuildContext context) => h12(context)?.copyWith(color: context.colorX.ms.textBlack50(context));
  static TextStyle? h13Gray(BuildContext context) => h13(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h14Gray(BuildContext context) => h14(context)?.copyWith(color: context.colorX.ms.textBlack50(context)); 
  static TextStyle? h15Gray(BuildContext context) => h15(context)?.copyWith(color: context.colorX.ms.textBlack50(context));   
// Bold text style.
  static TextStyle? h1Bold(BuildContext context) => h1(context)?.copyWith(fontWeight: FontWeight.bold);
  static TextStyle? h2Bold(BuildContext context) => h2(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h3Bold(BuildContext context) => h3(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h4Bold(BuildContext context) => h4(context)?.copyWith(fontWeight: FontWeight.bold);
  static TextStyle? h5Bold(BuildContext context) => h5(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h6Bold(BuildContext context) => h6(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h7Bold(BuildContext context) => h7(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h8Bold(BuildContext context) => h8(context)?.copyWith(fontWeight: FontWeight.bold);
  static TextStyle? h9Bold(BuildContext context) => h9(context)?.copyWith(fontWeight: FontWeight.bold);
  static TextStyle? h10Bold(BuildContext context) => h10(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h11Bold(BuildContext context) => h11(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h12Bold(BuildContext context) => h12(context)?.copyWith(fontWeight: FontWeight.bold);
  static TextStyle? h13Bold(BuildContext context) => h13(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h14Bold(BuildContext context) => h14(context)?.copyWith(fontWeight: FontWeight.bold); 
  static TextStyle? h15Bold(BuildContext context) => h15(context)?.copyWith(fontWeight: FontWeight.bold); 

}

//  formula
//  15 15 - , 14 14 -, 13 10 - ,12 5 -, 11 12 -, 10 9 -, 9 7 -, 8 4 -, 7 2 -,6 11 -,5 6 -,4 1 -,3 13 -,2 8 -,1 3 - ...
//  bodyLarge
//  bodyMedium
//  bodySmall
//  displayLarge
//  displayMedium
//  displaySmall
//  headlineLarge
//  headlineMedium
//  headlineSmall
//  labelLarge
//  labelMedium
//  labelSmall
//  titleLarge
//  titleMedium
//  titleSmall