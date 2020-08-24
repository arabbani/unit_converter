import 'dart:math' show pow;

import '../../enums/energy_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const _britishThermalUnitToJoule_15DegreeC = 1054.804;
const _britishThermalUnitToJoule_intlSteamTable = 1055.05585;
const _thermToJoule_ec = 100000 * _britishThermalUnitToJoule_intlSteamTable;
final _decaThermToJoule = 10 * _thermToJoule_ec;

/// __calorie variations
final _calorieVariations = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}calorie',
  4.184,
  decimalPrefixes,
  namePostfix: 'calorie',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.calorie,
    ],
  ),
);

/// __calorie 15 degree C variations
final _calorieVariations_15DegreeC = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}calorie_15DegreeC',
  4.1855,
  decimalPrefixes,
  namePostfix: 'calorie',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.calorie,
    ],
  ),
  system: UnitSystem.degree15C,
);

/// __calorie International Steam Table variations
final _calorieVariations_intlSteamTable = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}calorie_intlSteamTable',
  4.1868,
  decimalPrefixes,
  namePostfix: 'calorie',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.calorie,
    ],
  ),
  system: UnitSystem.intlSteamTable,
);

/// __electron volt variations
final _electronVoltVariations = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}electronVolt',
  1.6021766 * pow(10, -19),
  decimalPrefixes,
  namePostfix: 'electron volt',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.electronVolt,
    ],
  ),
);

/// __joule variations
final _jouleVariations = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}joule',
  1,
  decimalPrefixes,
  namePostfix: 'joule',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.joule,
    ],
  ),
);

/// __tonne variations
final _tonneVariations = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}tonne',
  4.184 * pow(10, 9),
  decimalPrefixes,
  namePostfix: 'tonne',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.tonne,
    ],
  ),
  system: UnitSystem.tnt,
  addAmericanName: true,
  americanNamePostfix: 'ton',
);

/// __watt hour variations
final _wattHourVariations = createUnitVariation(
  EnergyUnit.values,
  '${variationUnitNameSeperator}wattHour',
  3600,
  decimalPrefixes,
  namePostfix: 'watt hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.watt,
      SymbolPart.space,
      SymbolPart.lH,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'British thermal unit',
    createSymbol(
      const [
        SymbolPart.britishThermalUnit,
      ],
    ),
    EnergyUnit.britishThermalUnit,
    conversionFactor: 1054.350264,
  ),
  createUnit(
    'British thermal unit',
    createSymbol(
      const [
        SymbolPart.britishThermalUnit,
      ],
    ),
    EnergyUnit.britishThermalUnit_15DegreeC,
    conversionFactor: _britishThermalUnitToJoule_15DegreeC,
    system: unitSystem[UnitSystem.degree15C],
  ),
  createUnit(
    'British thermal unit',
    createSymbol(
      const [
        SymbolPart.britishThermalUnit,
      ],
    ),
    EnergyUnit.britishThermalUnit_intlSteamTable,
    conversionFactor: _britishThermalUnitToJoule_intlSteamTable,
    system: unitSystem[UnitSystem.intlSteamTable],
  ),
  createUnit(
    'decatherm',
    createSymbol(
      const [
        SymbolPart.decaTherm,
      ],
    ),
    EnergyUnit.decaTherm_ec,
    conversionFactor: _decaThermToJoule,
    system: unitSystem[UnitSystem.ec],
  ),
  createUnit(
    'erg',
    createSymbol(
      const [
        SymbolPart.lE,
        SymbolPart.lR,
        SymbolPart.lG,
      ],
    ),
    EnergyUnit.erg,
    conversionFactor: pow(10, -7),
  ),
  createUnit(
    'foot-pound force',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.space,
        SymbolPart.pound,
        SymbolPart.force,
      ],
    ),
    EnergyUnit.footPoundForce,
    conversionFactor: 1.3558179483,
  ),
  createUnit(
    'hartree',
    createSymbol(
      const [
        SymbolPart.lH,
        SymbolPart.lA,
      ],
    ),
    EnergyUnit.hartree,
    conversionFactor: 4.35974 * pow(10, -18),
  ),
  createUnit(
    'million British thermal units',
    createSymbol(
      const [
        SymbolPart.clM,
        SymbolPart.clM,
        SymbolPart.britishThermalUnit,
      ],
    ),
    EnergyUnit.millionBritishThermalUnits_intlSteamTable,
    conversionFactor: _britishThermalUnitToJoule_intlSteamTable * pow(10, 6),
    system: unitSystem[UnitSystem.intlSteamTable],
    variation: true,
  ),
  createUnit(
    'million decatherms',
    createSymbol(
      const [
        SymbolPart.clM,
        SymbolPart.clM,
        SymbolPart.decaTherm,
      ],
    ),
    EnergyUnit.millionDecaTherms,
    conversionFactor: _decaThermToJoule * pow(10, 6),
    system: unitSystem[UnitSystem.ec],
    variation: true,
  ),
  createUnit(
    'quad',
    createSymbol(
      const [
        SymbolPart.lQ,
        SymbolPart.lU,
        SymbolPart.lA,
        SymbolPart.lD,
      ],
    ),
    EnergyUnit.quad,
    conversionFactor: _britishThermalUnitToJoule_intlSteamTable * pow(10, 15),
  ),
  createUnit(
    'therm',
    createSymbol(
      const [
        SymbolPart.therm,
      ],
    ),
    EnergyUnit.therm_ec,
    conversionFactor: _thermToJoule_ec,
    system: unitSystem[UnitSystem.ec],
  ),
  createUnit(
    'therm',
    createSymbol(
      const [
        SymbolPart.therm,
      ],
    ),
    EnergyUnit.therm_Imperial,
    conversionFactor: 105505585.257348,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'therm',
    createSymbol(
      const [
        SymbolPart.therm,
      ],
    ),
    EnergyUnit.therm_us,
    conversionFactor: 100000 * _britishThermalUnitToJoule_15DegreeC,
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'thermie',
    createSymbol(
      const [
        SymbolPart.lT,
        SymbolPart.lH,
      ],
    ),
    EnergyUnit.thermie,
    conversionFactor: 4186800,
  ),
  createUnit(
    'thousand British thermal units',
    createSymbol(
      const [
        SymbolPart.clM,
        SymbolPart.britishThermalUnit,
      ],
    ),
    EnergyUnit.thousandBritishThermalUnits_intlSteamTable,
    conversionFactor: _britishThermalUnitToJoule_intlSteamTable * pow(10, 3),
    system: unitSystem[UnitSystem.intlSteamTable],
    variation: true,
  ),
  createUnit(
    'thousand decatherms',
    createSymbol(
      const [
        SymbolPart.clM,
        SymbolPart.decaTherm,
      ],
    ),
    EnergyUnit.thousandDecaTherms,
    conversionFactor: _decaThermToJoule * pow(10, 3),
    system: unitSystem[UnitSystem.ec],
    variation: true,
  ),
  createUnit(
    'tonne of oil equivalent',
    createSymbol(
      const [
        SymbolPart.tonne,
        SymbolPart.lO,
        SymbolPart.lE,
      ],
    ),
    EnergyUnit.tonneOfOilEquivalent,
    conversionFactor: 4.1868 * pow(10, 10),
    americanName: 'ton of oil equivalent',
  ),
};

/// Energy unit details
final energyUnitDetails = {
  ..._calorieVariations,
  ..._calorieVariations_15DegreeC,
  ..._calorieVariations_intlSteamTable,
  ..._electronVoltVariations,
  ..._jouleVariations,
  ..._tonneVariations,
  ..._wattHourVariations,
  ..._otherUnits,
};
