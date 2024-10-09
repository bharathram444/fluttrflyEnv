import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class SuccessMessageWidget extends StatelessWidget {
  const SuccessMessageWidget({
    super.key,
    required this.content,
    required this.buttonText,
    this.title,
    this.onTapButton,
  });

  final String? title;
  final String content;
  final String buttonText;

  final VoidCallback? onTapButton;

  @override
  Widget build(BuildContext context) {
    Color? bgColor = ColorX.instance.sc.deepWater;
    Color? textColor = ColorX.instance.sc.whiteS;

    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 340),
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpacerX.p8(),
              Text(content,
                  style: TextStyles.h8(context)?.copyWith(color: textColor),
                  textAlign: TextAlign.center),
              SpacerX.p8(),
               CircleAvatar(
                radius: 32,
                backgroundColor: ColorX.instance.sc.whiteS,
                child: Icon(Icons.check_circle_outline,
                    color: ColorX.instance.sc.heartChakra, size: 64),
              ),
              SpacerX.p32(),
            ],
          ),
        ),
      ),
    );
  }
}
