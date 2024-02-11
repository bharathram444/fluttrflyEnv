import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/network_request/network_request_cubit.dart';
import 'widgets.dart';

class NetworkRequestWidget<T, RP> extends StatelessWidget {
  const NetworkRequestWidget(
      {required this.childBuilder, required this.request, Key? key})
      : super(key: key);

  final Widget Function(T data) childBuilder;
  final VoidCallback request;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NetworkRequestCubit<T, RP>, NetworkRequestState<T>>(
      builder: (_, NetworkRequestState<T> state) {
        return state.when(
          initial: () => const LoadingIndicator(),
          loading: () => const LoadingIndicator(),
          success: childBuilder,
          failure: (f) => FailureWidget(error: f.error, onRefresh: request),
        );
      },
    );
  }
}
