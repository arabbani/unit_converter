import 'dart:math' show pow;

import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/length_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

final _squareFoot = pow(conversionFactor(Converter.length, LengthUnit.foot), 2);
final _acreToSquareMetre = 43560 * _squareFoot;

/// __barn variations
final _barnVariations = createUnitVariation(
  AreaUnit.values,
  '${variationUnitNameSeperator}barn',
  pow(10, -28),
  decimalPrefixes,
  namePostfix: 'barn',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.barn,
    ],
  ),
);

/// square __metre variations
final _squareMetreVariations = createUnitVariation(
  AreaUnit.values,
  'square${variationUnitNameSeperator}Metre',
  1,
  decimalPrefixes,
  namePrefix: 'square ',
  namePostfix: 'metre',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'square ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: 2,
);

/// other units
final _otherUnits = {
  createUnit(
    'acre',
    createSymbol(
      const [
        SymbolPart.acre,
      ],
    ),
    AreaUnit.acre,
    conversionFactor: _acreToSquareMetre,
  ),
  createUnit(
    'acre',
    createSymbol(
      const [
        SymbolPart.acre,
      ],
    ),
    AreaUnit.acre_usSurvey,
    conversionFactor: 4046.872609874252,
    system: unitSystem[UnitSystem.usSurvey],
  ),
  createUnit(
    'are',
    createSymbol(
      const [
        SymbolPart.are,
      ],
    ),
    AreaUnit.are,
    conversionFactor: 100,
  ),
  createUnit(
    'circular mil',
    createSymbol(
      const [
        SymbolPart.lC,
        SymbolPart.lM,
        SymbolPart.lI,
        SymbolPart.lL,
      ],
    ),
    AreaUnit.circularMil,
    conversionFactor: 5.067074790975 * pow(10, -10),
  ),
  createUnit(
    'hectare',
    createSymbol(
      const [
        SymbolPart.hectare,
      ],
    ),
    AreaUnit.hectare,
    conversionFactor: 10000,
  ),
  createUnit(
    'rai',
    createSymbol(
      const [
        SymbolPart.rai,
      ],
    ),
    AreaUnit.rai,
    conversionFactor: 1600,
  ),
  createUnit(
    'rood',
    createSymbol(
      const [
        SymbolPart.rood,
      ],
    ),
    AreaUnit.rood,
    conversionFactor: _acreToSquareMetre / 4,
  ),
  createUnit(
    'square',
    createSymbol(
      const [
        SymbolPart.lS,
        SymbolPart.lQ,
        SymbolPart.lU,
        SymbolPart.lA,
        SymbolPart.lR,
        SymbolPart.lE,
      ],
    ),
    AreaUnit.square,
    conversionFactor: 100 * _squareFoot,
  ),
  createUnit(
    'square foot',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.superscriptTwo,
      ],
    ),
    AreaUnit.squareFoot,
    conversionFactor: _squareFoot,
  ),
  createUnit(
    'square inch',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.superscriptTwo,
      ],
    ),
    AreaUnit.squareInch,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.inch), 2),
  ),
  createUnit(
    'square mile',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    AreaUnit.squareMile,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.mile), 2),
  ),
  createUnit(
    'square perch',
    createSymbol(
      const [
        SymbolPart.squarePerch,
      ],
    ),
    AreaUnit.squarePerch,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.rod), 2),
  ),
  createUnit(
    'square yard',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    AreaUnit.squareYard,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.yard), 2),
  ),
};

/// Area unit details
final areaUnitDetails = {
  ..._barnVariations,
  ..._squareMetreVariations,
  ..._otherUnits,
};
