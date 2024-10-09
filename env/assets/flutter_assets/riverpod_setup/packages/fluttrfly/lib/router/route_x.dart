import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteX {
  final String pageName;
  final RouteX? parent;
  late String path;
  late String name;

  RouteX({
    required this.pageName,
    this.parent,
    String? path,
    String? name,
  }) {
    this.name = name ?? pageName.split('/').last;
    this.path = pageName == '/'
        ? pageName
        : parent != null
            ? '${parent!.path}/$pageName'
            : '/$pageName';
  }

  // Method to get the parent route path
  String? get parentPath => parent?.path;
}

extension AppRouteNavigation on RouteX {
  void go(BuildContext context, {Object? extra}) {
    context.go(path, extra: extra);
  }

  void goNamed(BuildContext context, {Object? extra}) {
    context.goNamed(path.split('/').last, extra: extra);
  }

  Future<T?> push<T>(BuildContext context, {Object? extra}) async {
    return await context.push(path, extra: extra);
  }
}
