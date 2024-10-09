
import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class CompactCheckBoxTile extends StatelessWidget {
  const CompactCheckBoxTile({
    super.key,
    required this.title,
    required this.value,
    this.onTap,
  });

  final String title;
  final bool value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      enabled: true,
      selected: value,
      checkColor: ColorX.instance.sc.heartChakra,
      activeColor: ColorX.instance.sc.heartChakra,
      fillColor:  WidgetStatePropertyAll(ColorX.instance.ms.white(context)),
      onChanged: null,
      value: value,
      contentPadding: EdgeInsets.zero,
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
      title: Text(title),
    );
  }
}


class CompactListTile extends StatelessWidget {
  const CompactListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.onTap,
    this.leading,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      tileColor: ColorX.instance.shad.e30(context),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
      dense: true,
      leading: leading,
      visualDensity: const VisualDensity(vertical: -3),
      title: Text(title),
      subtitle: subtitle.isNotNull ? Text(subtitle.valueOrEmpty) : null,
    );
  }
}

class SelectedItemBuilder extends StatelessWidget {
  const SelectedItemBuilder(this.value, {super.key});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style:  TextStyle(fontSize: 16, color: ColorX.instance.ms.black(context)),
      overflow: TextOverflow.ellipsis,
    );
  }
}
