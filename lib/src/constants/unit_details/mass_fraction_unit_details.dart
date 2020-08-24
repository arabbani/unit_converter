import 'dart:math' show pow;

import '../../enums/mass_fraction_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// gram per __gram variations
final _intermediateGramPerGramVariations = createUnitVariation(
  MassFractionUnit.values,
  'gramPer${variationUnitNameSeperator}Gram',
  1,
  decimalPrefixes,
  namePrefix: 'gram per ',
  namePostfix: 'gram',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
    ],
  ),
  powerOfVariationConversionFactor: -1,
);

/// __gram per __gram variations
final _gramPerGramVariations = {
  for (var unit in _intermediateGramPerGramVariations)
    ...create(unit, MassFractionUnit.values)
};

/// other units
final _otherUnits = {
  createUnit(
    'part per billion',
    createSymbol(
      const [
        SymbolPart.lP,
        SymbolPart.lP,
        SymbolPart.lB,
      ],
    ),
    MassFractionUnit.partPerBillion,
    conversionFactor: pow(10, -9),
  ),
  createUnit(
    'part per hendred',
    createSymbol(
      const [
        SymbolPart.percentage,
      ],
    ),
    MassFractionUnit.partPerHundred,
    conversionFactor: 0.01,
  ),
  createUnit(
    'part per million',
    createSymbol(
      const [
        SymbolPart.lP,
        SymbolPart.lP,
        SymbolPart.lM,
      ],
    ),
    MassFractionUnit.partPerMillion,
    conversionFactor: pow(10, -6),
  ),
  createUnit(
    'part per quadrillion',
    createSymbol(
      const [
        SymbolPart.lP,
        SymbolPart.lP,
        SymbolPart.lQ,
      ],
    ),
    MassFractionUnit.partPerQuadrillion,
    conversionFactor: pow(10, -15),
  ),
  createUnit(
    'part per ten thousand',
    createSymbol(
      const [
        SymbolPart.partPerTenThousand,
      ],
    ),
    MassFractionUnit.partPerTenThousand,
    conversionFactor: 0.0001,
  ),
  createUnit(
    'part per thousand',
    createSymbol(
      const [
        SymbolPart.partPerThousand,
      ],
    ),
    MassFractionUnit.partPerThousand,
    conversionFactor: 0.001,
  ),
  createUnit(
    'part per trillion',
    createSymbol(
      const [
        SymbolPart.lP,
        SymbolPart.lP,
        SymbolPart.lT,
      ],
    ),
    MassFractionUnit.partPerTrillion,
    conversionFactor: pow(10, -12),
  ),
};

/// Mass fraction unit details
final massFractionUnitDetails = {
  ..._gramPerGramVariations,
  ..._otherUnits,
};
