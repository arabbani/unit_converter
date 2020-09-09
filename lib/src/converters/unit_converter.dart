import '../constants/others/available_unit.dart';
import '../constants/others/base_units.dart';
import '../converters/sound_converter.dart';
import '../converters/temperature_converter.dart';
import '../enums/converter.dart';
import '../enums/sound_unit.dart';
import '../enums/temperature_unit.dart';
import '../misc/global.dart';
import '../models/unit.dart';

/// The unit converter class. Implements the basic functionality for converter.
class UnitConverter<T> {
  /// The type of the converter.
  final Converter _type;

  /// Base unit of the converter.
  final T _baseUnit;

  /// UnitConverter constructor
  UnitConverter(this._type)
      : _baseUnit = baseUnits[_type],
        assert(_type != null) {
    // HACK : Initialize availableUnit by accessing unitCount
    if (availableUnit == null) {
      print("UnitCount: $unitCount");
    }
  }

  /// Total number of units of this converter.
  get unitCount => _availableUnit().length;

  /// The base unit of this converter.
  get baseUnit => unit(_baseUnit);

  /// Returns the result after converting the `value` from type `from` to type `to`.
  ///
  /// If `from` and `to` are the same, returns the `value` itself.
  double convert({double value, T from, T to}) {
    if (from != to) {
      switch (_type) {
        case Converter.temperature:
          return TemperatureConverter()
              .convert(value, from as TemperatureUnit, to as TemperatureUnit);
        case Converter.sound:
          return SoundConverter()
              .convert(value, from as SoundUnit, to as SoundUnit);
        default:
          final double fromOffset = conversionFactor(_type, from);
          final double toOffset = conversionFactor(_type, to);
          value *= fromOffset;
          value /= toOffset;
          return value;
      }
    }
    return value;
  }

  /// The information of the unit type `type`.
  Unit<T> unit(T type) {
    return _availableUnit().firstWhere((unit) => unit.type == type);
  }

  /// Returns all the units filtered by `include` and `exclude`.
  ///
  /// If `include` is defined, returns only the units defined by `include`.
  /// If `exclude` is defined, returns all the units except the units defined by `exclude`.
  ///
  /// If you want to filter the prefixed variation units, pass `withoutPrefixedVariation = true`
  Set<Unit<T>> units(
      {Set<T> include, Set<T> exclude, withoutVariation = false}) {
    var units = _availableUnit();
    if (withoutVariation) {
      units = units.where((unit) => unit.variation == false);
    }
    return _filterUnits(units, include, exclude);
  }

  Set<Unit<T>> _filterUnits(
      Set<Unit<T>> units, Set<T> include, Set<T> exclude) {
    if (include != null) {
      return units.where((unit) => include.contains(unit.type));
    }
    if (exclude != null) {
      return units.where((unit) => !exclude.contains(unit.type));
    }
    return units;
  }

  /// Get all the units of `_type`.
  Set<Unit<T>> _availableUnit() {
    return availableUnit[_type];
  }
}
