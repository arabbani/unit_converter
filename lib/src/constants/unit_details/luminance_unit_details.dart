import 'dart:math' show pow;

import '../../enums/converter.dart';
import '../../enums/length_unit.dart';
import '../../enums/luminance_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// candela per square __metre variations
final _candelaPerSquareMetreVariations = createUnitVariation(
  LuminanceUnit.values,
  'candelaPerSquare${variationUnitNameSeperator}Metre',
  1,
  decimalPrefixes,
  namePrefix: 'candela per square ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.candela,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'candela per square ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -2,
);

/// other units
final _otherUnits = {
  createUnit(
    'candela per square foot',
    createSymbol(
      const [
        SymbolPart.candela,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptTwo,
      ],
    ),
    LuminanceUnit.candelaPerSquareFoot,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.foot), -2),
  ),
  createUnit(
    'candela per square inch',
    createSymbol(
      const [
        SymbolPart.candela,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptTwo,
      ],
    ),
    LuminanceUnit.candelaPerSquareInch,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.inch), -2),
  ),
  createUnit(
    'foot-lambert',
    createSymbol(
      const [
        SymbolPart.lF,
        SymbolPart.lambert,
      ],
    ),
    LuminanceUnit.footLambert,
    conversionFactor: 3.42625909964,
  ),
  createUnit(
    'lambert',
    createSymbol(
      const [
        SymbolPart.lambert,
      ],
    ),
    LuminanceUnit.lambert,
    conversionFactor: 3183.09886184,
  ),
  createUnit(
    'stilb',
    createSymbol(
      const [
        SymbolPart.stilb,
      ],
    ),
    LuminanceUnit.stilb,
    conversionFactor: 10000,
  ),
};

/// Luminance unit details
final luminanceUnitDetails = {
  ..._candelaPerSquareMetreVariations,
  ..._otherUnits,
};
