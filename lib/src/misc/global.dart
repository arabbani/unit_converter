import 'dart:math' show pow;

import '../constants/others/conversion_factors.dart';
import '../constants/others/misc.dart';
import '../constants/others/prefix_name.dart';
import '../constants/others/prefix_value.dart';
import '../constants/others/symbol.dart';
import '../constants/others/unit_system.dart';
import '../enums/converter.dart';
import '../enums/metric_prefix.dart';
import '../enums/symbol_part.dart';
import '../enums/unit_system.dart';
import '../models/unit.dart';

/// Create symbol from `symbolParts`.
String createSymbol(List<SymbolPart> symbolParts) {
  assert(symbolParts != null || symbolParts.isNotEmpty,
      '\'symbolParts\' cannot be null or empty');
  String symbolName = '';
  for (var part in symbolParts) {
    symbolName += symbol[part];
  }
  return symbolName;
}

/// Get conversion factor for `unitType` of `conversionType`
double conversionFactor<T>(Converter conversionType, T unitType) {
  return conversionFactors[conversionType][unitType];
}

/// Get the enum from the string `value`.
T _enumFromString<T>(Iterable<T> values, String value) {
  return values.firstWhere(
    (type) =>
        type.toString().split(".").last.toLowerCase() == value.toLowerCase(),
    orElse: () => null,
  );
}

/// Get `ConversionType` enum from the string `value`.
Converter _conversionTypeFromString(String value) {
  value = value.split('Unit')[0];
  return _enumFromString(Converter.values, value);
}

/// Get the string representation of the `enumType`.
String stringFromEnum<T>(T enumType) {
  return enumType.toString().split(".").last;
}

/// Add conversion factor to base unit for unit `unitType`.
void _addConversionFactor<T>(T unitType, double conversionFactor) {
  var conversionType = _conversionTypeFromString(unitType.toString());
  conversionFactors[conversionType][unitType] = conversionFactor;
}

/// Create variation of variation
Set<Unit<T>> create<T>(Unit<T> unit, Iterable<T> values) {
  return createUnitVariation(
    values,
    '$variationUnitNameSeperator${stringFromEnum(unit.type)}',
    conversionFactor(
        _conversionTypeFromString(unit.type.toString()), unit.type),
    decimalPrefixes,
    namePostfix: unit.name,
    symbolPostfix: unit.symbol,
    addAmericanName: true,
    americanNamePostfix: unit.americanName,
  );
}

/// Create a unit
Unit<T> createUnit<T>(
  String name,
  String symbol,
  T type, {
  double conversionFactor,
  String americanName,
  bool variation = false,
  String system,
}) {
  if (conversionFactor != null) {
    _addConversionFactor(type, conversionFactor);
  }
  return Unit<T>(
    name,
    symbol,
    type,
    americanName: americanName,
    variation: variation,
    system: system,
  );
}

/// Create unit for variation
Unit<T> _createUnitForVariation<T>(
  String namePrefix,
  String namePostfix,
  String americanNamePrefix,
  String americanNamePostfix,
  String symbolPrefix,
  String symbolPostfix,
  double conversionFactor,
  bool addAmericanName,
  T type,
  UnitSystem system, {
  String variationName = '',
  String variationSymbol = '',
  bool variation = false,
}) {
  var unit = Unit<T>(
    '$namePrefix$variationName$namePostfix',
    '$symbolPrefix$variationSymbol$symbolPostfix',
    type,
    variation: variation,
  );
  if (system != null) {
    unit.system = unitSystem[system];
  }
  if (addAmericanName) {
    unit.americanName = '$americanNamePrefix$variationName$americanNamePostfix';
  }
  _addConversionFactor(type, conversionFactor);
  return unit;
}

/// Create variation units
Set<Unit<T>> createUnitVariation<T>(
  Iterable<T> unitEnum,
  String variationBaseUnitName,
  double conversionFactorToBaseUnit,
  List<MetricPrefix> variations, {
  String namePrefix = '',
  String namePostfix = '',
  String symbolPrefix = '',
  String symbolPostfix = '',
  UnitSystem system,
  int powerOfVariationConversionFactor = 1,
  bool addAmericanName = false,
  String americanNamePrefix = '',
  String americanNamePostfix = '',
  bool appendVariationUnitTypeWithSystemName = false,
}) {
  var units = <Unit<T>>{};
  var variationBase = _createUnitForVariation(
    namePrefix,
    namePostfix,
    americanNamePrefix,
    americanNamePostfix,
    symbolPrefix,
    symbolPostfix,
    conversionFactorToBaseUnit,
    addAmericanName,
    _enumFromString(
      unitEnum,
      variationBaseUnitName.replaceFirst(variationUnitNameSeperator, ''),
    ),
    system,
  );
  units.add(variationBase);
  if (appendVariationUnitTypeWithSystemName) {
    var systemName = stringFromEnum(system);
    variationBaseUnitName += '_$systemName';
  }
  for (MetricPrefix p in variations) {
    var variationName = prefixName[p];
    var prefix = prefixValue[p];
    var unit = _createUnitForVariation(
      namePrefix,
      namePostfix,
      americanNamePrefix,
      americanNamePostfix,
      symbolPrefix,
      symbolPostfix,
      conversionFactorToBaseUnit *
          pow(prefix.base, powerOfVariationConversionFactor * prefix.exponent),
      addAmericanName,
      _enumFromString(
        unitEnum,
        variationBaseUnitName.replaceFirst(
            variationUnitNameSeperator, variationName),
      ),
      system,
      variation: true,
      variationName: variationName,
      variationSymbol: createSymbol(
        [
          _enumFromString(SymbolPart.values, variationName),
        ],
      ),
    );
    units.add(unit);
  }
  return units;
}
