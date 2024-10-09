import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';


class CaptionText extends StatelessWidget {
  const CaptionText(
      {super.key, required this.title, this.isRequired = true, this.textColor});

  final Color? textColor;
  final String title;
  final bool isRequired;
  @override
  Widget build(BuildContext context) {
    Color? textColorX = textColor ?? ColorX.instance.ms.black(context);
    if (title.doesNotHaveValue) return const SizedBox.shrink();
    return RichText(
      text: TextSpan(
        style: context.textTheme.titleSmall?.copyWith(
            color: textColorX,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: .5),
        children: [
          TextSpan(text: title),
          if (isRequired) ...[
             TextSpan(
                text: ' *', style: TextStyle(color: ColorX.instance.sc.error)),
          ],
        ],
      ),
    );
  }
}
