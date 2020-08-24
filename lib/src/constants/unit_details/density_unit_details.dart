import 'dart:math' show pow;

import '../../enums/converter.dart';
import '../../enums/density_unit.dart';
import '../../enums/length_unit.dart';
import '../../enums/mass_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../enums/volume_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const _perCubicMetreToPerLitre = 0.001;
final _grainToGram = conversionFactor(Converter.mass, MassUnit.grain) /
    conversionFactor(Converter.mass, MassUnit.gram);
final _ounceToGram = conversionFactor(Converter.mass, MassUnit.ounce) /
    conversionFactor(Converter.mass, MassUnit.gram);
final _poundToGram = conversionFactor(Converter.mass, MassUnit.pound) /
    conversionFactor(Converter.mass, MassUnit.gram);
final _slugToGram = conversionFactor(Converter.mass, MassUnit.slug) /
    conversionFactor(Converter.mass, MassUnit.gram);
final _cubicFootToCubicMetre =
    conversionFactor(Converter.volume, VolumeUnit.cubicFoot);
final _cubicInchToCubicMetre =
    conversionFactor(Converter.volume, VolumeUnit.cubicInch);
final _cubicMileToCubicMetre =
    conversionFactor(Converter.volume, VolumeUnit.cubicMile);
final _nauticalMileToCubicMetre =
    pow(conversionFactor(Converter.length, LengthUnit.nauticalMile), 3);
final _cubicYardToCubicMetre =
    conversionFactor(Converter.volume, VolumeUnit.cubicYard);
final _fluiOunceToCubicMetre_us =
    conversionFactor(Converter.volume, VolumeUnit.fluidOunce_us);
final _gallonToCubicMetre_usLiquid =
    conversionFactor(Converter.volume, VolumeUnit.gallon_usLiquid);
final _quartToCubicMetre_usLiquid =
    conversionFactor(Converter.volume, VolumeUnit.quart_usLiquid);
final _cupToCubicMetre_metric =
    conversionFactor(Converter.volume, VolumeUnit.cup_metric);
final _cupToCubicMetre_us =
    conversionFactor(Converter.volume, VolumeUnit.cup_us);
final _cupToCubicMetre_usFoodNutritionLabel =
    conversionFactor(Converter.volume, VolumeUnit.cup_usFoodNutritionLabel);

/// gram per __litre variations
final _intermediateGramPerLitreVariations = createUnitVariation(
  DensityUnit.values,
  'gramPer${variationUnitNameSeperator}Litre',
  1,
  decimalPrefixes,
  namePrefix: 'gram per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'gram per ',
  americanNamePostfix: 'liter',
  powerOfVariationConversionFactor: -1,
);

/// gram per cubic __metre variations
final _intermediateGramPerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  'gramPerCubic${variationUnitNameSeperator}Metre',
  _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'gram per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'gram per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

/// __gram per __litre and per cubic __metre variations
final _gramPerLitreAndPerCubicMetreVariations = {
  for (var unit in _intermediateGramPerLitreVariations)
    ...create(unit, DensityUnit.values),
  for (var unit in _intermediateGramPerCubicMetreVariations)
    ...create(unit, DensityUnit.values),
};

/// __gram per cubic foot variations
final _gramPerCubicFootVariations = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerCubicFoot',
  _perCubicMetreToPerLitre / _cubicFootToCubicMetre,
  decimalPrefixes,
  namePostfix: 'gram per cubic foot',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.foot,
      SymbolPart.superscriptThree,
    ],
  ),
);

/// __gram per cubic inch variations
final _gramPerCubicInchVariations = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerCubicInch',
  _perCubicMetreToPerLitre / _cubicInchToCubicMetre,
  decimalPrefixes,
  namePostfix: 'gram per cubic inch',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.inch,
      SymbolPart.superscriptThree,
    ],
  ),
);

/// __gram per cubic mile variations
final _gramPerCubicMileVariations = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerCubicMile',
  _perCubicMetreToPerLitre / _cubicMileToCubicMetre,
  decimalPrefixes,
  namePostfix: 'gram per cubic mile',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.mile,
      SymbolPart.superscriptThree,
    ],
  ),
);

/// __gram per cubic nautical mile variations
final _gramPerCubicNauticalMileVariations = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerCubicNauticalMile',
  _perCubicMetreToPerLitre / _nauticalMileToCubicMetre,
  decimalPrefixes,
  namePostfix: 'gram per cubic nautical mile',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.nauticalMile,
      SymbolPart.superscriptThree,
    ],
  ),
);

/// __gram per cubic yard variations
final _gramPerCubicYardVariations = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerCubicYard',
  _perCubicMetreToPerLitre / _cubicYardToCubicMetre,
  decimalPrefixes,
  namePostfix: 'gram per cubic yard',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.yard,
      SymbolPart.superscriptThree,
    ],
  ),
);

/// __gram per fluid ounce us variations
final _gramPerFluidOunceVariations_us = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerFluidOunce_us',
  _perCubicMetreToPerLitre / _fluiOunceToCubicMetre_us,
  decimalPrefixes,
  namePostfix: 'gram per fluid ounce',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.fluid,
      SymbolPart.space,
      SymbolPart.ounce,
    ],
  ),
  system: UnitSystem.us,
);

/// __gram per gallon us liquid variations
final _gramPerGallonVariations_usLiquid = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerGallon_usLiquid',
  _perCubicMetreToPerLitre / _gallonToCubicMetre_usLiquid,
  decimalPrefixes,
  namePostfix: 'gram per gallon',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.gallon,
    ],
  ),
  system: UnitSystem.usLiquid,
);

/// __gram per quart us liquid variations
final _gramPerQuartVariations_usLiquid = createUnitVariation(
  DensityUnit.values,
  '${variationUnitNameSeperator}gramPerQuart_usLiquid',
  _perCubicMetreToPerLitre / _quartToCubicMetre_usLiquid,
  decimalPrefixes,
  namePostfix: 'gram per quart',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.quart,
    ],
  ),
  system: UnitSystem.usLiquid,
);

/// grain per __litre variations
final _grainPerLitreVariations = createUnitVariation(
  DensityUnit.values,
  'grainPer${variationUnitNameSeperator}Litre',
  _grainToGram,
  decimalPrefixes,
  namePrefix: 'grain per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.grain,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'grain per ',
  americanNamePostfix: 'liter',
  powerOfVariationConversionFactor: -1,
);

/// grain per cubic __metre variations
final _grainPerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  'grainPerCubic${variationUnitNameSeperator}Metre',
  _grainToGram * _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'grain per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.grain,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'grain per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

/// ounce per __litre variations
final _ouncePerLitreVariations = createUnitVariation(
  DensityUnit.values,
  'ouncePer${variationUnitNameSeperator}Litre',
  _ounceToGram,
  decimalPrefixes,
  namePrefix: 'ounce per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.ounce,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'ounc per ',
  americanNamePostfix: 'liter',
  powerOfVariationConversionFactor: -1,
);

/// ounce per cubic __metre variations
final _ouncePerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  'ouncePerCubic${variationUnitNameSeperator}Metre',
  _ounceToGram * _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'ounce per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.ounce,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'ounce per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

/// pound per __litre variations
final _poundPerLitreVariations = createUnitVariation(
  DensityUnit.values,
  'poundPer${variationUnitNameSeperator}Litre',
  _poundToGram,
  decimalPrefixes,
  namePrefix: 'pound per ',
  namePostfix: 'litre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.pound,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'pound per ',
  americanNamePostfix: 'liter',
  powerOfVariationConversionFactor: -1,
);

/// pound per cubic __metre variations
final _poundPerCubicMetreVariations = createUnitVariation(
  DensityUnit.values,
  'poundPerCubic${variationUnitNameSeperator}Metre',
  _poundToGram * _perCubicMetreToPerLitre,
  decimalPrefixes,
  namePrefix: 'pound per cubic ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.pound,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'pound per cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -3,
);

/// other units
final _otherUnits = {
  createUnit(
    'grain per cubic foot',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicFoot,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _cubicFootToCubicMetre,
  ),
  createUnit(
    'grain per cubic inch',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicInch,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _cubicInchToCubicMetre,
  ),
  createUnit(
    'grain per cubic mile',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicMile,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _cubicMileToCubicMetre,
  ),
  createUnit(
    'grain per cubic nautical mile',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicNauticalMile,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _nauticalMileToCubicMetre,
  ),
  createUnit(
    'grain per cubic yard',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.grainPerCubicYard,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _cubicYardToCubicMetre,
  ),
  createUnit(
    'grain per fluid ounce',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.grainPerFluidOunce_us,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _fluiOunceToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'grain per gallon',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.grainPerGallon_usLiquid,
    conversionFactor: (_grainToGram * _perCubicMetreToPerLitre) /
        _gallonToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'grain per quart',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.grainPerQuart_usLiquid,
    conversionFactor:
        _grainToGram * _perCubicMetreToPerLitre / _quartToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gram per cup',
    createSymbol(
      const [
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.gramPerCup_metric,
    conversionFactor: _perCubicMetreToPerLitre / _cupToCubicMetre_metric,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'gram per cup',
    createSymbol(
      const [
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.gramPerCup_us,
    conversionFactor: _perCubicMetreToPerLitre / _cupToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'gram per cup',
    createSymbol(
      const [
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.gramPerCup_usFoodNutrition,
    conversionFactor:
        _perCubicMetreToPerLitre / _cupToCubicMetre_usFoodNutritionLabel,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'ounce per cubic foot',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicFoot,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _cubicFootToCubicMetre,
  ),
  createUnit(
    'ounce per cubic inch',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicInch,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _cubicInchToCubicMetre,
  ),
  createUnit(
    'ounce per cubic mile',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicMile,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _cubicMileToCubicMetre,
  ),
  createUnit(
    'ounce per cubic nautical mile',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicNauticalMile,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _nauticalMileToCubicMetre,
  ),
  createUnit(
    'ounce per cubic yard',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.ouncePerCubicYard,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _cubicYardToCubicMetre,
  ),
  createUnit(
    'ounce per fluid ounce',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.ouncePerFluidOunce_us,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _fluiOunceToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'ounce per gallon',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.ouncePerGallon_usLiquid,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _gallonToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'ounce per quart',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.ouncePerQuart_usLiquid,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _quartToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'ounce per cup',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.ouncePerCup_metric,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _cupToCubicMetre_metric,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'ounce per cup',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.ouncePerCup_us,
    conversionFactor:
        _ounceToGram * _perCubicMetreToPerLitre / _cupToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'ounce per cup',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.ouncePerCup_usFoodNutrition,
    conversionFactor: _ounceToGram *
        _perCubicMetreToPerLitre /
        _cupToCubicMetre_usFoodNutritionLabel,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'pound per cubic foot',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicFoot,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _cubicFootToCubicMetre,
  ),
  createUnit(
    'pound per cubic inch',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicInch,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _cubicInchToCubicMetre,
  ),
  createUnit(
    'pound per cubic mile',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicMile,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _cubicMileToCubicMetre,
  ),
  createUnit(
    'pound per cubic nautical mile',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicNauticalMile,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _nauticalMileToCubicMetre,
  ),
  createUnit(
    'pound per cubic yard',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.poundPerCubicYard,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _cubicYardToCubicMetre,
  ),
  createUnit(
    'pound per fluid ounce',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.poundPerFluidOunce_us,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _fluiOunceToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'pound per gallon',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.poundPerGallon_usLiquid,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _gallonToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'pound per quart',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.poundPerQuart_usLiquid,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _quartToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'pound per cup',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.poundPerCup_metric,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _cupToCubicMetre_metric,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'pound per cup',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.poundPerCup_us,
    conversionFactor:
        _poundToGram * _perCubicMetreToPerLitre / _cupToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'pound per cup',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lC,
      ],
    ),
    DensityUnit.poundPerCup_usFoodNutrition,
    conversionFactor: _poundToGram *
        _perCubicMetreToPerLitre /
        _cupToCubicMetre_usFoodNutritionLabel,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'slug per cubic foot',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicFoot,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _cubicFootToCubicMetre,
  ),
  createUnit(
    'slug per cubic inch',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicInch,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _cubicInchToCubicMetre,
  ),
  createUnit(
    'slug per cubic mile',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicMile,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _cubicMileToCubicMetre,
  ),
  createUnit(
    'slug per cubic nautical mile',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.nauticalMile,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicNauticalMile,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _nauticalMileToCubicMetre,
  ),
  createUnit(
    'slug per cubic yard',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    DensityUnit.slugPerCubicYard,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _cubicYardToCubicMetre,
  ),
  createUnit(
    'slug per fluid ounce',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    DensityUnit.slugPerFluidOunce_us,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _fluiOunceToCubicMetre_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'slug per gallon',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.gallon,
      ],
    ),
    DensityUnit.slugPerGallon_usLiquid,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _gallonToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'slug per quart',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.forwardSlash,
        SymbolPart.quart,
      ],
    ),
    DensityUnit.slugPerQuart_usLiquid,
    conversionFactor:
        _slugToGram * _perCubicMetreToPerLitre / _quartToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
};

/// Density unit details
final densityUnitDetails = {
  ..._gramPerLitreAndPerCubicMetreVariations,
  ..._gramPerCubicFootVariations,
  ..._gramPerCubicInchVariations,
  ..._gramPerCubicMileVariations,
  ..._gramPerCubicNauticalMileVariations,
  ..._gramPerCubicYardVariations,
  ..._gramPerFluidOunceVariations_us,
  ..._gramPerGallonVariations_usLiquid,
  ..._gramPerQuartVariations_usLiquid,
  ..._grainPerLitreVariations,
  ..._grainPerCubicMetreVariations,
  ..._ouncePerLitreVariations,
  ..._ouncePerCubicMetreVariations,
  ..._poundPerLitreVariations,
  ..._poundPerCubicMetreVariations,
  ..._otherUnits,
};
