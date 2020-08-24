import 'dart:math' show pow;

import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/length_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../enums/volume_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

final _acreToSquareMetre = conversionFactor(Converter.area, AreaUnit.acre);
final _footToMetre = conversionFactor(Converter.length, LengthUnit.foot);
final _inchToMetre = conversionFactor(Converter.length, LengthUnit.inch);
const _litreToCubicMetre = 0.001;
const _gallon_imperial = 4.54609 * _litreToCubicMetre;
const _gallon_usDry = 0.00440488377086;
final _gallon_usLiquid = 231 * pow(_inchToMetre, 3);
final _milliLiterToCubicMetre = _litreToCubicMetre * pow(10, -3);
const _peck_imperial = 2 * _gallon_imperial;
const _peck_usDry = 2 * _gallon_usDry;
final _fluidOunce_us = _gallon_usLiquid / 128;
const _fluidOunce_imperial = _gallon_imperial / 160;

/// __litre variations
final _litreVariations = createUnitVariation(
  VolumeUnit.values,
  '${variationUnitNameSeperator}litre',
  _litreToCubicMetre,
  decimalPrefixes,
  namePostfix: 'litre',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'liter',
);

/// cubic __metre variations
final _cubicMetreVariations = createUnitVariation(
  VolumeUnit.values,
  'cubic${variationUnitNameSeperator}Metre',
  1,
  decimalPrefixes,
  namePrefix: 'cubic ',
  namePostfix: 'metre',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'cubic ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: 3,
);

/// other units
final _otherUnits = {
  createUnit(
    'acre-foot',
    createSymbol(
      const [
        SymbolPart.acre,
        SymbolPart.space,
        SymbolPart.foot,
      ],
    ),
    VolumeUnit.acreFoot,
    conversionFactor: _acreToSquareMetre * _footToMetre,
  ),
  createUnit(
    'acre-inch',
    createSymbol(
      const [
        SymbolPart.acre,
        SymbolPart.space,
        SymbolPart.inch,
      ],
    ),
    VolumeUnit.acreInch,
    conversionFactor: _acreToSquareMetre * _inchToMetre,
  ),
  createUnit(
    'board foot',
    createSymbol(
      const [
        SymbolPart.boardFoot,
      ],
    ),
    VolumeUnit.boardFoot,
    conversionFactor: pow(_footToMetre, 3) / 12,
  ),
  createUnit(
    'bushel',
    createSymbol(
      const [
        SymbolPart.bushel,
      ],
    ),
    VolumeUnit.bushel_imperial,
    conversionFactor: 8 * _gallon_imperial,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'bushel',
    createSymbol(
      const [
        SymbolPart.bushel,
      ],
    ),
    VolumeUnit.bushel_usDryLevel,
    conversionFactor: 8 * _gallon_usDry,
    system: unitSystem[UnitSystem.usDryLevel],
  ),
  createUnit(
    'cubic foot',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.superscriptThree,
      ],
    ),
    VolumeUnit.cubicFoot,
    conversionFactor: pow(
      _footToMetre,
      3,
    ),
  ),
  createUnit(
    'cubic inch',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.superscriptThree,
      ],
    ),
    VolumeUnit.cubicInch,
    conversionFactor: pow(
      _inchToMetre,
      3,
    ),
  ),
  createUnit(
    'cubic mile',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.superscriptThree,
      ],
    ),
    VolumeUnit.cubicMile,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.mile), 3),
  ),
  createUnit(
    'cubic yard',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.superscriptThree,
      ],
    ),
    VolumeUnit.cubicYard,
    conversionFactor:
        pow(conversionFactor(Converter.length, LengthUnit.yard), 3),
  ),
  createUnit(
    'cup',
    createSymbol(
      const [
        SymbolPart.lC,
      ],
    ),
    VolumeUnit.cup_imperial,
    conversionFactor: _gallon_imperial / 16,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'cup',
    createSymbol(
      const [
        SymbolPart.lC,
      ],
    ),
    VolumeUnit.cup_metric,
    conversionFactor: 250 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'cup',
    createSymbol(
      const [
        SymbolPart.lC,
      ],
    ),
    VolumeUnit.cup_us,
    conversionFactor: _gallon_usLiquid / 16,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'cup',
    createSymbol(
      const [
        SymbolPart.lC,
      ],
    ),
    VolumeUnit.cup_usFoodNutritionLabel,
    conversionFactor: 240 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'firlot',
    createSymbol(
      const [
        SymbolPart.firlot,
      ],
    ),
    VolumeUnit.firlot_imperial,
    conversionFactor: 4 * _peck_imperial,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'firlot',
    createSymbol(
      const [
        SymbolPart.firlot,
      ],
    ),
    VolumeUnit.firlot_usDry,
    conversionFactor: 4 * _peck_usDry,
    system: unitSystem[UnitSystem.usDry],
  ),
  createUnit(
    'fluid dram',
    createSymbol(
      const [
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.dram,
      ],
    ),
    VolumeUnit.fluidDram_us,
    conversionFactor: 0.000003696691195313,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'fluid ounce',
    createSymbol(
      const [
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    VolumeUnit.fluidOunce_imperial,
    conversionFactor: _fluidOunce_imperial,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'fluid ounce',
    createSymbol(
      const [
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    VolumeUnit.fluidOunce_us,
    conversionFactor: _fluidOunce_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'fluid ounce',
    createSymbol(
      const [
        SymbolPart.fluid,
        SymbolPart.space,
        SymbolPart.ounce,
      ],
    ),
    VolumeUnit.fluidOunce_usFoodNutritionLabel,
    conversionFactor: 30 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'gallon',
    createSymbol(
      const [
        SymbolPart.gallon,
      ],
    ),
    VolumeUnit.gallon_imperial,
    conversionFactor: _gallon_imperial,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'gallon',
    createSymbol(
      const [
        SymbolPart.gallon,
      ],
    ),
    VolumeUnit.gallon_usDry,
    conversionFactor: _gallon_usDry,
    system: unitSystem[UnitSystem.usDry],
  ),
  createUnit(
    'gallon',
    createSymbol(
      const [
        SymbolPart.gallon,
      ],
    ),
    VolumeUnit.gallon_usLiquid,
    conversionFactor: _gallon_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gill',
    createSymbol(
      const [
        SymbolPart.gill,
      ],
    ),
    VolumeUnit.gill_imperial,
    conversionFactor: _gallon_imperial / 32,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'gill',
    createSymbol(
      const [
        SymbolPart.gill,
      ],
    ),
    VolumeUnit.gill_us,
    conversionFactor: _gallon_usLiquid / 32,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'hectare metre',
    createSymbol(
      const [
        SymbolPart.hectare,
        SymbolPart.space,
        SymbolPart.metre,
      ],
    ),
    VolumeUnit.hectareMetre,
    conversionFactor: 10000,
    americanName: 'hectare meter',
  ),
  createUnit(
    'jigger',
    createSymbol(
      const [
        SymbolPart.lJ,
        SymbolPart.lI,
        SymbolPart.lG,
        SymbolPart.lG,
        SymbolPart.lE,
        SymbolPart.lR,
      ],
    ),
    VolumeUnit.jigger,
    conversionFactor: 1.5 * _fluidOunce_us,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'minim',
    createSymbol(
      const [
        SymbolPart.minim,
      ],
    ),
    VolumeUnit.minim_imperial,
    conversionFactor: _fluidOunce_imperial / 480,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'minim',
    createSymbol(
      const [
        SymbolPart.minim,
      ],
    ),
    VolumeUnit.minim_us,
    conversionFactor: _fluidOunce_us / 480,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'oil barrel',
    createSymbol(
      const [
        SymbolPart.oilBarrel,
      ],
    ),
    VolumeUnit.oilBarrel,
    conversionFactor: 42 * _gallon_usLiquid,
  ),
  createUnit(
    'peck',
    createSymbol(
      const [
        SymbolPart.peck,
      ],
    ),
    VolumeUnit.peck_imperial,
    conversionFactor: _peck_imperial,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'peck',
    createSymbol(
      const [
        SymbolPart.peck,
      ],
    ),
    VolumeUnit.peck_usDry,
    conversionFactor: _peck_usDry,
    system: unitSystem[UnitSystem.usDry],
  ),
  createUnit(
    'pint',
    createSymbol(
      const [
        SymbolPart.pint,
      ],
    ),
    VolumeUnit.pint_imperial,
    conversionFactor: _gallon_imperial / 8,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'pint',
    createSymbol(
      const [
        SymbolPart.pint,
      ],
    ),
    VolumeUnit.pint_usDry,
    conversionFactor: _gallon_usDry / 8,
    system: unitSystem[UnitSystem.usDry],
  ),
  createUnit(
    'pint',
    createSymbol(
      const [
        SymbolPart.pint,
      ],
    ),
    VolumeUnit.pint_usLiquid,
    conversionFactor: _gallon_usLiquid / 8,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'quart',
    createSymbol(
      const [
        SymbolPart.quart,
      ],
    ),
    VolumeUnit.quart_imperial,
    conversionFactor: _gallon_imperial / 4,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'quart',
    createSymbol(
      const [
        SymbolPart.quart,
      ],
    ),
    VolumeUnit.quart_usDry,
    conversionFactor: _gallon_usDry / 4,
    system: unitSystem[UnitSystem.usDry],
  ),
  createUnit(
    'quart',
    createSymbol(
      const [
        SymbolPart.quart,
      ],
    ),
    VolumeUnit.quart_usLiquid,
    conversionFactor: _gallon_usLiquid / 4,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'tablespoon',
    createSymbol(
      const [
        SymbolPart.tablespoon,
      ],
    ),
    VolumeUnit.tablespoon_australian,
    conversionFactor: 20 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.australian],
  ),
  createUnit(
    'tablespoon',
    createSymbol(
      const [
        SymbolPart.tablespoon,
      ],
    ),
    VolumeUnit.tablespoon_metric,
    conversionFactor: 15 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'tablespoon',
    createSymbol(
      const [
        SymbolPart.tablespoon,
      ],
    ),
    VolumeUnit.tablespoon_us,
    conversionFactor: _gallon_usLiquid / 256,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'tablespoon',
    createSymbol(
      const [
        SymbolPart.tablespoon,
      ],
    ),
    VolumeUnit.tablespoon_usFoodNutritionLabel,
    conversionFactor: 15 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'teaspoon',
    createSymbol(
      const [
        SymbolPart.teaspoon,
      ],
    ),
    VolumeUnit.teaspoon_metric,
    conversionFactor: 5 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'teaspoon',
    createSymbol(
      const [
        SymbolPart.teaspoon,
      ],
    ),
    VolumeUnit.teaspoon_us,
    conversionFactor: _gallon_usLiquid / 768,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'teaspoon',
    createSymbol(
      const [
        SymbolPart.teaspoon,
      ],
    ),
    VolumeUnit.teaspoon_usFoodNutritionLabel,
    conversionFactor: 5 * _milliLiterToCubicMetre,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
};

/// Volume unit details
final volumeUnitDetails = {
  ..._litreVariations,
  ..._cubicMetreVariations,
  ..._otherUnits,
};
