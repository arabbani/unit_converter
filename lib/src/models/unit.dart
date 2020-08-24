/// Class that defines an unit
class Unit<T> {
  /// Name of the unit
  final String name;

  /// Name of the unit in American spelling
  String americanName;

  /// Symbol of the unit
  final String symbol;

  /// Type of the unit
  final T type;

  /// Whether this unit is a prefixed variation of another unit
  final bool variation;

  /// The unit system to which this unit belong to
  String system;

  /// Unit constructor
  Unit(
    this.name,
    this.symbol,
    this.type, {
    this.americanName,
    this.variation = false,
    this.system,
  })  : assert(name != null, '\'name\' cannot be null'),
        assert(symbol != null, '\'symbol\' cannot be null'),
        assert(type != null, '\'type\' cannot be null'),
        assert(name.isNotEmpty, '\'name\' cannot be empty'),
        assert(symbol.isNotEmpty, '\'symbol\' cannot be empty');
}
