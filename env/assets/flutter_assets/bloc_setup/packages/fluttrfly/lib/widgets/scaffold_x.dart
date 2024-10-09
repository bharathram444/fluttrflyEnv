import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class ScaffoldX extends StatelessWidget {
  final Widget body;
  final String? title;
  final List<Widget>? appBarActions;
  final Widget? appBarLeading;
  final bool wantLeading;
  final double appToolbarHeight;
  final bool titleTextBlack;
  final bool titleCenter;
  final Widget? floatingActionButton;
  final Color? appBarBackgroundColor;

  const ScaffoldX({
    super.key,
    required this.body,
    this.title,
    this.appBarActions,
    this.wantLeading = false,
    this.appToolbarHeight = 40,
    this.titleTextBlack = false,
    this.titleCenter = false,
    this.floatingActionButton,
    this.appBarBackgroundColor,
    this.appBarLeading,
  });

  @override
  Widget build(BuildContext context) {
    var appBarLeadingX = appBarLeading ??
        IconButton(
          onPressed: context.close,
          icon: Icon(Icons.arrow_back, color: ColorX.instance.ms.black(context)),
        );
    return Scaffold(
      // backgroundColor: AppColors.white(context),
      appBar: wantLeading == false && title == null
          ? null
          : AppBar(
              centerTitle: titleCenter,
              leading: wantLeading == false ? null : appBarLeadingX,
              backgroundColor: appBarBackgroundColor,
              toolbarHeight: appToolbarHeight == -1 ? null : appToolbarHeight,
              title: title == null
                  ? null
                  : Text(
                      title!,
                      style: titleTextBlack
                          ? TextStyles.h5Bold(context)
                              ?.copyWith(color: ColorX.instance.ms.black(context))
                          : TextStyles.h6Gray(context),
                    ),
              actions: appBarActions,
              automaticallyImplyLeading: false,
            ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
