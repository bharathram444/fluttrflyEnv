import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttrfly/fluttrfly.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({
    super.key,
    required this.emptyText,
    this.title = 'REFRESH',
    this.onRefresh,
  });

  final String emptyText;
  final String title;
  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpacedColumn(
        margin: const EdgeInsets.all(12.0),
        defaultHeight: 18.0,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // i store this svg in fluttrfly env repo and get url of that image and past here [or] create one assert here .
          SvgPicture.asset(IconX.emptySearch.path, height: 120, width: 120),
          Text(emptyText, style: context.textTheme.titleMedium),
          if (onRefresh.isNotNull)
            ButtonX(
              fakeLoadingDuration: 3000,
              label: title,
              onPressed: onRefresh,
            ),
        ],
      ),
    );
  }
}
