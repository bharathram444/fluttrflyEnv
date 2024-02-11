extension TypesApi on Object? {
  bool get isNull => this == null;
}

extension BooleanApi on bool? {
  bool get isTrue => this ?? false;
  bool get isFalse => !isTrue;
}
