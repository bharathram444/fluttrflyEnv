import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/infinite_list/infinite_list_cubit.dart';
import '../model/failure.dart';
import 'widgets.dart';

typedef ChildWidgetBuilder<T> = Widget Function(BuildContext context, T data);

class InfiniteListViewWidget<T extends StateStreamable<InfiniteListState<D>>, D>
    extends StatelessWidget {
  const InfiniteListViewWidget({
    required this.childBuilder,
    required this.fetchInitial,
    required this.fetchMore,
    required this.emptyListText,
    Key? key,
  }) : super(key: key);

  final ChildWidgetBuilder<D> childBuilder;
  final VoidCallback fetchInitial;
  final VoidCallback fetchMore;
  final String emptyListText;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, InfiniteListState<D>>(
      builder: (_, InfiniteListState<D> state) {
        return state.when(
          initial: () => const LoadingIndicator(),
          loading: () => const LoadingIndicator(),
          success: (List<D> data, bool hasReachedMax, String? query) {
            if (data.isEmpty) {
              return EmptyListWidget(
                  title: emptyListText, onRefresh: fetchInitial);
            }

            return _InfiniteListView<D>(
              data: data,
              childBuilder: childBuilder,
              fetchInitial: fetchInitial,
              fetchMore: fetchMore,
              hasReachedMax: hasReachedMax,
            );
          },
          failure: (Failure f) =>
              FailureWidget(error: f.error, onRefresh: fetchInitial),
        );
      },
    );
  }
}

class _InfiniteListView<T> extends StatefulWidget {
  const _InfiniteListView({
    required this.data,
    required this.childBuilder,
    required this.fetchInitial,
    required this.fetchMore,
    required this.hasReachedMax,
    Key? key,
  }) : super(key: key);

  final ChildWidgetBuilder<T> childBuilder;
  final List<T> data;
  final bool hasReachedMax;
  final VoidCallback fetchInitial;
  final VoidCallback fetchMore;

  @override
  State<_InfiniteListView<T>> createState() => _InfiniteListViewState<T>();
}

class _InfiniteListViewState<T> extends State<_InfiniteListView<T>> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(
      () {
        final bool hasScrolledToBottom = _scrollController.offset >=
            _scrollController.position.maxScrollExtent;
        if (hasScrolledToBottom && !_scrollController.position.outOfRange) {
          widget.fetchMore();
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<T> data = widget.data;
    final bool hasReachedMax = widget.hasReachedMax;
    final int listLen =
        hasReachedMax ? widget.data.length : widget.data.length + 1;

    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: listLen,
      separatorBuilder: (BuildContext ctx, _) => const Divider(),
      controller: _scrollController,
      itemBuilder: (BuildContext ctx, int idx) {
        if (idx >= data.length) {
          return const Center(child: LoadingIndicator());
        }

        return widget.childBuilder(context, data[idx]);
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
