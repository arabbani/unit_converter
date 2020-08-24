import 'dart:math' show pow;

import '../../enums/frequency_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __hertz variations
final _hertzVariations = createUnitVariation(
  FrequencyUnit.values,
  '${variationUnitNameSeperator}hertz',
  1,
  decimalPrefixes,
  namePostfix: 'hertz',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.hertz,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'degree per hour',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    FrequencyUnit.degreePerHour,
    conversionFactor: 0.000000771604938272,
  ),
  createUnit(
    'degree per minute',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    FrequencyUnit.degreePerMinute,
    conversionFactor: 4.6296296296296 * pow(10, -5),
  ),
  createUnit(
    'degree per second',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    FrequencyUnit.degreePerSecond,
    conversionFactor: 0.00277777777777778,
  ),
  createUnit(
    'radian per hour',
    createSymbol(
      const [
        SymbolPart.radian,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    FrequencyUnit.radianPerHour,
    conversionFactor: 4.4209706414415 * pow(10, -5),
  ),
  createUnit(
    'radian per minute',
    createSymbol(
      const [
        SymbolPart.radian,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    FrequencyUnit.radianPerMinute,
    conversionFactor: 0.00265258238486,
  ),
  createUnit(
    'radian per second',
    createSymbol(
      const [
        SymbolPart.radian,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    FrequencyUnit.radianPerSecond,
    conversionFactor: 0.159154943091895000,
  ),
  createUnit(
    'revolution per hour',
    createSymbol(
      const [
        SymbolPart.revolution,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    FrequencyUnit.revolutionPerHour,
    conversionFactor: 0.00027777777777778,
  ),
  createUnit(
    'revolution per minute',
    createSymbol(
      const [
        SymbolPart.revolution,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    FrequencyUnit.revolutionPerMinute,
    conversionFactor: 0.0166666666666667,
  ),
  createUnit(
    'revolution per second',
    createSymbol(
      const [
        SymbolPart.revolution,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    FrequencyUnit.revolutionPerSecond,
    conversionFactor: 1,
  ),
};

/// Frequency unit details
final frequencyUnitDetails = {
  ..._hertzVariations,
  ..._otherUnits,
};
