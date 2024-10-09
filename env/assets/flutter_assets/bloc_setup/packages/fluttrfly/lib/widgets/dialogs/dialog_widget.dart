import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';




class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    this.title,
    required this.message,
    required this.buttonText,
    required this.onTapDismiss,
    required this.dialogType,
    this.textColor = const Color(0xFF707070),
    this.color = const Color(0xFF179DFF),
    this.backgroundColor = Colors.white,
    this.buttonTextColor,
    this.imagePath,
    this.padding = const EdgeInsets.all(24),
    this.margin = const EdgeInsets.all(24),
    this.noImage = false,
  });
  final String? title;
  final String message;
  final String? imagePath;
  final String buttonText;
  final VoidCallback? onTapDismiss;
  final DialogType dialogType;
  final Color? color;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? buttonTextColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  /// If you don't want any icon or image, you toggle it to true.
  final bool noImage;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 340,
          ),
          margin: margin ?? const EdgeInsets.all(24),
          padding: padding ?? const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: backgroundColor ?? theme.dialogBackgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SpacedColumn(
            defaultHeight: 12,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!noImage) ...[
                Image.asset(
                  imagePath ?? IconX.info.path,
                  width: 84,
                  height: 84,
                  color: imagePath != null ? null : dialogType.toColor(),
                ),
              ] else ...[
                const SizedBox(height: 24),
              ],
              if (title.containsValidValue) ...[
                Text(
                  title.valueOrEmpty,
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ] else ...[
                const SizedBox(height: 5)
              ],
              Text(
                message,
                style: TextStyle(
                  color: textColor,
                  height: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              
              PanaraButton(
                text: buttonText, 
                bgColor: dialogType.toColor(), 
                onTap: () => onTapDismiss?.call(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///
class PanaraButton extends StatelessWidget {
  const PanaraButton({
    super.key,
    required this.text,
    this.onTap,
    required this.bgColor,
  });
  
  final String text;
  final VoidCallback? onTap;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: theme.buttonTheme.colorScheme?.surface,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: bgColor == Colors.white ? ColorX.instance.sc.deepWater : bgColor),
            borderRadius: BorderRadius.circular(10),
            color: bgColor,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              color: bgColor == Colors.white ? ColorX.instance.sc.deepWater : ColorX.instance.sc.whiteS,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
