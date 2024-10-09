import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class LabelListTile extends StatelessWidget {
  const LabelListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.value,
    this.valueColor = Colors.black,
  });

  final Widget leading;
  final String title;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle([Color? color]) => context.textTheme.titleMedium!.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: color,
    );
    return Card(
      margin: EdgeInsets.zero,
      elevation: 2,
      shape: RoundedRectangleBorder(
        side:  BorderSide(color: ColorX.instance.sc.grey),
        borderRadius: BorderRadius.circular(4.0),
      ),
      surfaceTintColor: ColorX.instance.sc.whiteS,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          children: [
            leading,
            SpacerX.p4(),
            Text(title, style: textStyle(ColorX.instance.sc.blueBell)),
            SpacerX.p4(),
            Text(':', style: textStyle(ColorX.instance.sc.blueBell)),
            SpacerX.p8(),
            Flexible(child: Text(value, style: textStyle(valueColor),overflow: TextOverflow.ellipsis,)),
          ],
        ),
      ),
    );
  }
}
