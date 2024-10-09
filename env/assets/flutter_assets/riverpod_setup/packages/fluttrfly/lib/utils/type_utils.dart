extension TypesApi on Object? {
  bool get isNull => this == null;
  bool get isNotNull => !isNull;
}

extension BooleanApi on bool? {
  bool get isTrue => this ?? false;
  bool get isFalse => !isTrue;
}
