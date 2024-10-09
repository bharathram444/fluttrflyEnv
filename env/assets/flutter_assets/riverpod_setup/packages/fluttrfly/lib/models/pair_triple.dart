/// Represents a generic pair of two values.
///
/// There is no meaning attached to values in this class, it can be used for any purpose.
/// Pair exhibits value semantics, i.e. two pairs are equal if both components are equal.

class Pair<A, B> {
  const Pair(this.first, this.second);

  final A first;
  final B second;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair && first == other.first && second == other.second;

  @override
  int get hashCode => Object.hash(first, second);

  @override
  String toString() => 'Pair($first, $second)';
}

/// Represents a triad of values
///
/// There is no meaning attached to values in this class, it can be used for any purpose.
/// Triple exhibits value semantics, i.e. two triples are equal if all three components are equal.

class Triple<A, B, C> {
  const Triple(this.first, this.second, this.third);

  final A first;
  final B second;
  final C third;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Triple &&
          first == other.first &&
          second == other.second &&
          third == other.third;

  @override
  int get hashCode => Object.hash(first, second, third);

  @override
  String toString() => 'Triple($first, $second, $third)';
}
