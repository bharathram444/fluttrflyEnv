import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.errorMsg, this.retry});

  final String errorMsg;
  final VoidCallback? retry;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(
              Icons.warning_amber_outlined,
              color: ColorX.instance.sc.error,
              size: 64,
            ),
            const SizedBox(height: 8.0),
            Text(
              errorMsg,
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium?.copyWith(
                color: ColorX.instance.sc.error,
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ButtonX(
                onPressed: retry,
                label: 'REFRESH',
                backgroundColor: ColorX.instance.sc.error,
              ),
            )
          ],
        ),
      ),
    );
  }
}
