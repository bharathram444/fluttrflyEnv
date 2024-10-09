import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

/// A customizable button widget that supports various styles, loading states,
/// and icon placements.
class ButtonX extends StatelessWidget {
  /// The label text displayed on the button.
  final String label;

  /// The text style of the label.
  final TextStyle? labelStyle;

  /// The icon displayed on the button.
  final IconData? icon;

  /// The callback function to be executed when the button is pressed.
  final FutureOr<void> Function()? onPressed;

  /// The duration to simulate a loading state in milliseconds.
  final int? fakeLoadingDuration;

  /// Indicates whether the button is in a loading state.
  final bool loading;

  /// Determines whether the icon is placed before the label.
  final bool iconFirst;

  /// The main axis alignment of the button's content.
  final MainAxisAlignment flex;

  /// The background color of the button.
  final Color? backgroundColor;

  /// The color of the icon.
  final Color? iconColor;

  /// The color of the label.
  final Color? labelColor;

  /// The size of the icon.
  final double? iconSize;

  /// Indicates whether the button scales to fit its content.
  final bool scale;

  /// The height of the button.
  final double height;

  /// The gap between the icon and the label.
  final SizedBox gap;

  /// The shape of the button.
  final ShapeBorder? shape;

  /// Creates an [ButtonX] with customizable properties.
  const ButtonX({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.fakeLoadingDuration,
    this.loading = false,
    this.iconFirst = false,
    this.flex = MainAxisAlignment.center,
    this.backgroundColor,
    this.scale = false,
    this.height = -1,
    this.gap = gapW4,
    this.iconColor,
    this.labelColor,
    this.shape,
    this.iconSize,
    this.labelStyle,
  });

  /// Creates a primary styled [ButtonX].
  ButtonX.primaryButton({
    Key? key,
    required BuildContext context,
    required String label,
    required FutureOr<void> Function()? onPressed,
    bool? loading,
  }) : this(
          key: key,
          label: label,
          onPressed: onPressed,
          loading: loading ?? false,
          scale: true,
          height: context.sizeOfHeight * 0.056,
          labelStyle: TextStyles.h7(context),
        );

  /// Creates a container styled [ButtonX].
  ButtonX.containerButton({
    Key? key,
    required BuildContext context,
    required String label,
    IconData? icon,
    required FutureOr<void> Function()? onPressed,
    bool? loading,
    bool? iconFirst,
    MainAxisAlignment? flex,
  }) : this(
          key: key,
          label: label,
          icon: icon,
          onPressed: onPressed,
          loading: loading ?? false,
          iconFirst: iconFirst ?? false,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(21),
              side: BorderSide(
                  color: ColorX.instance.ms.greyTransparent20(context), width: 1)),
          iconColor: ColorX.instance.ms.black(context),
          labelColor: ColorX.instance.sc.mutedRed,
          height: context.sizeOfHeight * 0.06,
          flex: flex ?? MainAxisAlignment.start,
          gap: gapW12,
          backgroundColor: ColorX.instance.shad.e30(context),
          scale: true,
        );

  /// Returns the text style for the label, defaulting to a bold style if not
  /// provided.
  TextStyle _getTextStyle(BuildContext context) {
    return labelStyle ??
        TextStyles.h8Bold(context)?.copyWith(color: labelColor) ??
        const TextStyle();
  }

  /// Calculates the width of the label text.
  double _calculateTextWidth(BuildContext context, TextStyle textStyle) {
    final textPainter = TextPainter(
      text: TextSpan(text: label, style: textStyle),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size.width;
  }

  /// Calculates the width of the gap between the icon and the label.
  double _calculateGapWidth(Widget gap) {
    if (gap is SizedBox && gap.width != null) {
      return gap.width!;
    }
    return 4.0; // Default gap width if none is provided.
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ValueNotifier<bool>(false);
    final textStyle = _getTextStyle(context);
    final labelWidth = _calculateTextWidth(context, textStyle);
    final iconWidth = icon != null ? (iconSize ?? 24.0) : 0.0;
    final gapWidth = iconWidth == 0.0 ? 0.0 : _calculateGapWidth(gap);
    final totalWidth = labelWidth + iconWidth + gapWidth;

    Widget content = Row(
      mainAxisAlignment: flex,
      children: [
        if (iconFirst && icon != null) ...[
          Icon(icon,
              color: iconColor ?? ColorX.instance.ms.white(context), size: iconSize),
          gap,
        ],
        Text(label,
            style: textStyle.copyWith(
                color: labelColor ?? ColorX.instance.ms.white(context))),
        if (!iconFirst && icon != null) ...[
          gap,
          Icon(icon,
              color: iconColor ?? ColorX.instance.ms.white(context), size: iconSize),
        ],
      ],
    );

    /// Handles the button press by setting the loading state, executing the
    /// [onPressed] callback, and managing loading simulation with [fakeLoadingDuration].
    ///
    /// This method ensures the loading state is toggled correctly while the button
    /// is pressed, and it catches any errors during the execution of [onPressed].
    ///
    /// If the button is still mounted after the fake loading duration, it resets the
    /// loading state.
    Future<void> handleButtonPress() async {
      // Ensure the onPressed callback is defined and the widget is still mounted.
      if (onPressed != null && context.mounted) {
        // Set the button to loading state.
        isLoading.value = true;

        try {
          // Execute the onPressed callback.
          await onPressed!();

          // If a fake loading duration is provided, simulate the loading.
          if (fakeLoadingDuration != null && context.mounted) {
            await Future.delayed(Duration(milliseconds: fakeLoadingDuration!));
          }
        } catch (e) {
          // Log the error if the onPressed callback throws an exception.
          debugPrint('Error during button press: $e');
        } finally {
          // Reset the loading state, but only if the widget is still mounted.
          if (context.mounted) {
            isLoading.value = false;
          }
        }
      }
    }

    return ValueListenableBuilder<bool>(
      valueListenable: isLoading,
      builder: (context, isLoading, child) {
        return SizedBox(
          height: height == -1 ? context.sizeOfHeight * 0.042 : height,
          child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            elevation: 0,
            disabledColor: backgroundColor?.withOpacity(0.6) ??
                context.colorScheme.primary.withAlpha(120),
            color: backgroundColor ?? context.colorScheme.primary.withAlpha(220),
            focusElevation: 0,
            highlightElevation: 0,
            onPressed: isLoading || loading || onPressed == null
                ? null
                : () => handleButtonPress(),
            shape: shape ??
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
            child: isLoading || loading
                ? SizedBox(
                    width: scale ? context.sizeOfWidth : totalWidth,
                    child: Center(
                      child: SpinKitThreeBounce(
                        color: ColorX.instance.ms.white(context),
                        size: 18, // Consider making this customizable
                      ),
                    ),
                  )
                : scale
                    ? content
                    : FittedBox(
                        fit: BoxFit.scaleDown,
                        child: content,
                      ),
          ),
        );
      }
    );
  }
}
