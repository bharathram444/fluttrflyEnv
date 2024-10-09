import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fluttrfly/network/failure.dart';

typedef AsyncValueOf<T> = Future<Either<Failure,T>>;

typedef JSONObject = Map<String,dynamic>;

typedef JSONArray = List<JSONObject>;

typedef WidgetBlocBuilder<S> = Widget Function(S state);

dynamic toNull(_) => null;

typedef ListItemBuilder<T> = Widget Function(
  BuildContext context,
  T item,
  bool isSelected,
  VoidCallback onItemSelect,
);
typedef HeaderBuilder<T> = Widget Function(
  BuildContext context,
  T selectedItem,
  bool enabled,
);

typedef HeaderListBuilder<T> = Widget Function(
  BuildContext context,
  List<T> selectedItems,
  bool enabled,
);
typedef HintBuilder = Widget Function(
  BuildContext context,
  String hint,
  bool enabled,
);
