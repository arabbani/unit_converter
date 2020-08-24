import '../../enums/mass_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const _poundToKiloGram = 0.45359237;
const _grainToKiloGram = _poundToKiloGram / 7000;

/// __gram variations
final _gramVariations = createUnitVariation(
  MassUnit.values,
  '${variationUnitNameSeperator}gram',
  0.001,
  decimalPrefixes,
  namePostfix: 'gram',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
    ],
  ),
);

/// __tonne variations
final _tonneVariations = createUnitVariation(
  MassUnit.values,
  '${variationUnitNameSeperator}tonne',
  1000,
  decimalPrefixes,
  namePostfix: 'tonne',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.tonne,
    ],
  ),
  system: UnitSystem.metric,
);

/// other units
final _otherUnits = {
  createUnit(
    'carat',
    createSymbol(
      const [
        SymbolPart.carat,
      ],
    ),
    MassUnit.carat,
    conversionFactor: 0.0002,
  ),
  createUnit(
    'grain',
    createSymbol(
      const [
        SymbolPart.grain,
      ],
    ),
    MassUnit.grain,
    conversionFactor: _grainToKiloGram,
  ),
  createUnit(
    'long hundredweight',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.hundredWeight,
      ],
    ),
    MassUnit.longHundredWeight,
    conversionFactor: 112 * _poundToKiloGram,
  ),
  createUnit(
    'long tonne',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
      ],
    ),
    MassUnit.longTonne,
    conversionFactor: 2240 * _poundToKiloGram,
    americanName: 'long ton',
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'ounce',
    createSymbol(
      const [
        SymbolPart.ounce,
      ],
    ),
    MassUnit.ounce,
    conversionFactor: _poundToKiloGram / 16,
  ),
  createUnit(
    'ounce',
    createSymbol(
      const [
        SymbolPart.ounce,
      ],
    ),
    MassUnit.ounce_USFoodNutritionLabel,
    conversionFactor: 0.028,
    system: unitSystem[UnitSystem.usFoodNutritionLabel],
  ),
  createUnit(
    'pennyweight',
    createSymbol(
      const [
        SymbolPart.pennyWeight,
      ],
    ),
    MassUnit.pennyWeight,
    conversionFactor: 24 * _grainToKiloGram,
  ),
  createUnit(
    'pood',
    createSymbol(
      const [
        SymbolPart.pood,
      ],
    ),
    MassUnit.pood,
    conversionFactor: 16.3807,
  ),
  createUnit(
    'pound',
    createSymbol(
      const [
        SymbolPart.pound,
      ],
    ),
    MassUnit.pound,
    conversionFactor: _poundToKiloGram,
  ),
  createUnit(
    'short hundredweight',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.hundredWeight,
      ],
    ),
    MassUnit.shortHundredWeight,
    conversionFactor: 100 * _poundToKiloGram,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'short tonne',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
      ],
    ),
    MassUnit.shortTonne,
    conversionFactor: 2000 * _poundToKiloGram,
    americanName: 'short ton',
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'slug',
    createSymbol(
      const [
        SymbolPart.slug,
      ],
    ),
    MassUnit.slug,
    conversionFactor: 14.5939029,
  ),
  createUnit(
    'stone',
    createSymbol(
      const [
        SymbolPart.stone,
      ],
    ),
    MassUnit.stone,
    conversionFactor: 14 * _poundToKiloGram,
  ),
  createUnit(
    'troy ounce',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.space,
        SymbolPart.troy,
      ],
    ),
    MassUnit.troyOunce,
    conversionFactor: 480 * _grainToKiloGram,
  ),
  createUnit(
    'troy pound',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.space,
        SymbolPart.troy,
      ],
    ),
    MassUnit.troyPound,
    conversionFactor: 5760 * _grainToKiloGram,
  ),
};

/// Mass unit details
final massUnitDetails = {
  ..._gramVariations,
  ..._tonneVariations,
  ..._otherUnits,
};
