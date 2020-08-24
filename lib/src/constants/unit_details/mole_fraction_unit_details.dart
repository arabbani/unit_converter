import 'dart:math' show pow;

import '../../enums/mole_fraction_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// mole per __mole variations
final _intermediateMolePerMoleVariations = createUnitVariation(
  MoleFractionUnit.values,
  'molePer${variationUnitNameSeperator}Mole',
  1,
  decimalPrefixes,
  namePrefix: 'mole per ',
  namePostfix: 'mole',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.mole,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.mole,
    ],
  ),
  powerOfVariationConversionFactor: -1,
);

/// __mole per __mole variations
final _molePerMoleVariations = {
  for (var unit in _intermediateMolePerMoleVariations)
    ...create(unit, MoleFractionUnit.values)
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
    MoleFractionUnit.partPerBillion,
    conversionFactor: pow(10, -9),
  ),
  createUnit(
    'part per hendred',
    createSymbol(
      const [
        SymbolPart.percentage,
      ],
    ),
    MoleFractionUnit.partPerHundred,
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
    MoleFractionUnit.partPerMillion,
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
    MoleFractionUnit.partPerQuadrillion,
    conversionFactor: pow(10, -15),
  ),
  createUnit(
    'part per ten thousand',
    createSymbol(
      const [
        SymbolPart.partPerTenThousand,
      ],
    ),
    MoleFractionUnit.partPerTenThousand,
    conversionFactor: 0.0001,
  ),
  createUnit(
    'part per thousand',
    createSymbol(
      const [
        SymbolPart.partPerThousand,
      ],
    ),
    MoleFractionUnit.partPerThousand,
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
    MoleFractionUnit.partPerTrillion,
    conversionFactor: pow(10, -12),
  ),
};

/// Mole fraction unit details
final moleFractionUnitDetails = {
  ..._molePerMoleVariations,
  ..._otherUnits,
};
