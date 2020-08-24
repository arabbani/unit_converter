import 'dart:math' show pow;

import '../../enums/symbol_part.dart';
import '../../enums/torque_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __newton metre variations
final _newtonMetreVariations = createUnitVariation(
  TorqueUnit.values,
  '${variationUnitNameSeperator}newtonMetre',
  1,
  decimalPrefixes,
  namePostfix: 'newton metre',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.newton,
      SymbolPart.space,
      SymbolPart.metre,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'newton meter',
);

/// other units
final _otherUnits = {
  createUnit(
    'gram-force centimetre',
    createSymbol(
      const [
        SymbolPart.gram,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.centi,
        SymbolPart.metre,
      ],
    ),
    TorqueUnit.gramForceCentiMetre,
    conversionFactor: 9.80665 * pow(10, -5),
    americanName: 'gram-force centimeter',
  ),
  createUnit(
    'kilogram-force centimetre',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.centi,
        SymbolPart.metre,
      ],
    ),
    TorqueUnit.kiloGramForceCentiMetre,
    conversionFactor: 0.0980665,
    americanName: 'kilogram-force centimeter',
  ),
  createUnit(
    'kilogram-force metre',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.metre,
      ],
    ),
    TorqueUnit.kiloGramForceMetre,
    conversionFactor: 9.80665,
    americanName: 'kilogram-force meter',
  ),
  createUnit(
    'ounce-force foot',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.foot,
      ],
    ),
    TorqueUnit.ounceForceFoot,
    conversionFactor: 0.084738624,
  ),
  createUnit(
    'ounce-force inch',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.inch,
      ],
    ),
    TorqueUnit.ounceForceInch,
    conversionFactor: 0.00706155,
  ),
  createUnit(
    'pound-force foot',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.foot,
      ],
    ),
    TorqueUnit.poundForceFoot,
    conversionFactor: 1.355817948331,
  ),
  createUnit(
    'pound-force inch',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.space,
        SymbolPart.inch,
      ],
    ),
    TorqueUnit.poundForceInch,
    conversionFactor: 0.1129848290,
  ),
  createUnit(
    'poundal foot',
    createSymbol(
      const [
        SymbolPart.poundal,
        SymbolPart.space,
        SymbolPart.foot,
      ],
    ),
    TorqueUnit.poundalFoot,
    conversionFactor: 0.0421401,
  ),
};

/// Torque unit details
final torqueUnitDetails = {
  ..._newtonMetreVariations,
  ..._otherUnits,
};
