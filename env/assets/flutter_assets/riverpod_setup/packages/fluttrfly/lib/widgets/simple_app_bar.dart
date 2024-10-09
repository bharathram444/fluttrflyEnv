import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:go_router/go_router.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    super.key,
    this.title,
    this.automaticallyImplyLeading = true,
    this.actions = const <Widget>[],
  });

  final String? title;
  final bool automaticallyImplyLeading;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      titleTextStyle:
          TextStyles.h7(context)?.copyWith(color: ColorX.instance.sc.deepWater),
      title: Text(title.valueOrEmpty),
      actions: actions,
      leading: automaticallyImplyLeading
          ? Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorX.instance.ms.black(context),
                  width: 1,
                ),
                color: ColorX.instance.ms.white(context),
                shape: BoxShape.circle,
              ),
              margin: const EdgeInsets.all(14.0),
              padding: EdgeInsets.zero,
              child: GestureDetector(
                onTap: context.pop,
                child: const Icon(Icons.arrow_back),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
