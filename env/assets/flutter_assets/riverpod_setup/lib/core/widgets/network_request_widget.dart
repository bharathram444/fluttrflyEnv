import 'package:flutter/material.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef Builder<D> = Widget Function(BuildContext context, WidgetRef ref,
    bool isLoading, Failure? failure, D? success, bool isInitial);

class NetworkRequestWidget<D> extends ConsumerWidget {
  const NetworkRequestWidget({
    required this.provider,
    required this.builder,
    this.skipFailure = false,
    super.key,
  });
  final StateNotifierProvider provider;
  final bool skipFailure;
  final Builder<D> builder;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      provider,
      (_, next) => next.maybeWhen(
        orElse: () => null,
        failure: (failure) {
          if (!skipFailure) {
             DialogsX.showErrorDialog(
              context,
              content: failure.error,
              // onTapDismiss: () {},
            );
          } else {
            return null;
          }
        },
      ),
    );
    final proWatch = ref.watch(provider);
    final bool isLoading = proWatch.isLoading;
    final bool isInitial = proWatch.isInitial;
    final Failure? failure = proWatch.maybeWhen(
      orElse: () => null,
      failure: (failure) => failure,
    );
    final D? success = proWatch.maybeWhen(
      orElse: () => null,
      success: (data) => data,
    );

    // print(
    //     "isLoading: $isLoading isInitial: $isInitial failure: $failure success: $success");

    return builder(context, ref, isLoading, failure, success, isInitial);

    /// To provider request on onPress/onTap/etc...
    /// Given provider and request provider should be same,
    /// Ex : ref.read(yourProvider.notifier).request(),
  }
}
