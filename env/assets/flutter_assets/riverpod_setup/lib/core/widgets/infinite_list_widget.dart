import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttrfly/fluttrfly.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef ChildWidgetBuilder<D> = Widget Function(BuildContext context, D data);

class InfiniteListViewWidget<D> extends ConsumerWidget {
  const InfiniteListViewWidget({
    required this.childBuilder,
    required this.fetchInitial,
    required this.fetchMore,
    required this.emptyListText,
    required this.provider,
    super.key,
  });

  final ChildWidgetBuilder<D> childBuilder;
  final VoidCallback fetchInitial;
  final VoidCallback fetchMore;
  final String emptyListText;
  final StateNotifierProvider provider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pro = ref.watch(provider);
    return pro.when(
      initial: () => const Center(child: LoadingIndicatorX()),
      loading: () => const Center(child: LoadingIndicatorX()),
      success: (List<D> data, bool hasReachedMax, bool isLoadingMore,
          Failure? failure) {
        if (data.isEmpty) {
          return FailureWidget(errorMsg: emptyListText, retry: fetchInitial);
        }

        return _InfiniteListView<D>(
          data: data,
          childBuilder: childBuilder,
          fetchInitial: fetchInitial,
          fetchMore: fetchMore,
          hasReachedMax: hasReachedMax,
          failure: failure,
        );
      },
      failed: (Failure f) =>
          FailureWidget(errorMsg: f.error, retry: fetchInitial),
    );
  }
}

class _InfiniteListView<D> extends HookConsumerWidget {
  const _InfiniteListView({
    required this.data,
    required this.childBuilder,
    required this.fetchInitial,
    required this.fetchMore,
    required this.hasReachedMax,
    this.failure,
    super.key,
  });

  final ChildWidgetBuilder<D> childBuilder;
  final List<D> data;
  final bool hasReachedMax;
  final VoidCallback fetchInitial;
  final VoidCallback fetchMore;
  final Failure? failure;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int listLen =
        failure != null || !hasReachedMax ? data.length + 1 : data.length;
    final scrollController = useScrollController();
    scrollController.addListener(
      () {
        final bool hasScrolledToBottom = scrollController.offset >=
            scrollController.position.maxScrollExtent;
        if (hasScrolledToBottom &&
            !scrollController.position.outOfRange &&
            !hasReachedMax) {
          fetchMore();
        }
      },
    );

    return Material(
      type: MaterialType.transparency,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(12.0),
        itemCount: listLen,
        controller: scrollController,
        itemBuilder: (BuildContext ctx, int idx) {
          if (idx >= data.length) {
            if (failure != null) {
              return FailureWidget(
                errorMsg: failure!.error,
                retry: fetchMore,
              );
            }

            return const Center(child: LoadingIndicatorX());
          }

          return childBuilder(context, data[idx]);
        },
      ),
    );
  }
}