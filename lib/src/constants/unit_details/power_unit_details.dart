import '../../enums/converter.dart';
import '../../enums/energy_unit.dart';
import '../../enums/power_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);

final _calorieToJoule_intlSteamTable =
    conversionFactor(Converter.energy, EnergyUnit.calorie_intlSteamTable);
final _ergToJoule = conversionFactor(Converter.energy, EnergyUnit.erg);
final _footPoundForceToJoule =
    conversionFactor(Converter.energy, EnergyUnit.footPoundForce);
final _britishThermalUnitToJoule_intlSteamTable = conversionFactor(
    Converter.energy, EnergyUnit.britishThermalUnit_intlSteamTable);

/// __calorie per hour International Steam Table variations
final _caloriePerHourVariations_intlSteamTable = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}caloriePerHour_intlSteamTable',
  _calorieToJoule_intlSteamTable / _hourToSecond,
  decimalPrefixes,
  namePostfix: 'calorie per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.calorie,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  system: UnitSystem.intlSteamTable,
);

/// __calorie per minute International Steam Table variations
final _caloriePerMinuteVariations_intlSteamTable = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}caloriePerMinute_intlSteamTable',
  _calorieToJoule_intlSteamTable / _minuteToSecond,
  decimalPrefixes,
  namePostfix: 'calorie per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.calorie,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  system: UnitSystem.intlSteamTable,
);

/// __calorie per second International Steam Table variations
final _caloriePerSecondVariations_intlSteamTable = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}caloriePerSecond_intlSteamTable',
  _calorieToJoule_intlSteamTable,
  decimalPrefixes,
  namePostfix: 'calorie per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.calorie,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  system: UnitSystem.intlSteamTable,
);

/// __joule per hour variations
final _joulePerHourVariations = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}joulePerHour',
  1 / _hourToSecond,
  decimalPrefixes,
  namePostfix: 'joule per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.joule,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
);

/// __joule per minute variations
final _joulePerMinuteVariations = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}joulePerMinute',
  1 / _minuteToSecond,
  decimalPrefixes,
  namePostfix: 'joule per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.joule,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
);

/// __joule per second variations
final _joulePerSecondVariations = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}joulePerSecond',
  1,
  decimalPrefixes,
  namePostfix: 'joule per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.joule,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
);

/// __watt variations
final _wattVariations = createUnitVariation(
  PowerUnit.values,
  '${variationUnitNameSeperator}watt',
  1,
  decimalPrefixes,
  namePostfix: 'watt',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.watt,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'British thermal unit per hour',
    createSymbol(
      const [
        SymbolPart.britishThermalUnit,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    PowerUnit.britishThermalUnitPerHour_intlSteamTable,
    conversionFactor: _britishThermalUnitToJoule_intlSteamTable / _hourToSecond,
    system: unitSystem[UnitSystem.intlSteamTable],
  ),
  createUnit(
    'British thermal unit per minute',
    createSymbol(
      const [
        SymbolPart.britishThermalUnit,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    PowerUnit.britishThermalUnitPerMinute_intlSteamTable,
    conversionFactor:
        _britishThermalUnitToJoule_intlSteamTable / _minuteToSecond,
    system: unitSystem[UnitSystem.intlSteamTable],
  ),
  createUnit(
    'British thermal unit per second',
    createSymbol(
      const [
        SymbolPart.britishThermalUnit,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    PowerUnit.britishThermalUnitPerSecond_intlSteamTable,
    conversionFactor: _britishThermalUnitToJoule_intlSteamTable,
    system: unitSystem[UnitSystem.intlSteamTable],
  ),
  createUnit(
    'erg per hour',
    createSymbol(
      const [
        SymbolPart.lE,
        SymbolPart.lR,
        SymbolPart.lG,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    PowerUnit.ergPerHour,
    conversionFactor: _ergToJoule / _hourToSecond,
  ),
  createUnit(
    'erg per minute',
    createSymbol(
      const [
        SymbolPart.lE,
        SymbolPart.lR,
        SymbolPart.lG,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    PowerUnit.ergPerMinute,
    conversionFactor: _ergToJoule / _minuteToSecond,
  ),
  createUnit(
    'erg per second',
    createSymbol(
      const [
        SymbolPart.lE,
        SymbolPart.lR,
        SymbolPart.lG,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    PowerUnit.ergPerSecond,
    conversionFactor: _ergToJoule,
  ),
  createUnit(
    'foot pound per minute',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.space,
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    PowerUnit.footPoundPerMinute,
    conversionFactor: _footPoundForceToJoule / _minuteToSecond,
  ),
  createUnit(
    'foot pound per second',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.space,
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    PowerUnit.footPoundPerSecond,
    conversionFactor: _footPoundForceToJoule,
  ),
  createUnit(
    'horsepower',
    createSymbol(
      const [
        SymbolPart.clB,
        SymbolPart.clH,
        SymbolPart.clP,
      ],
    ),
    PowerUnit.horsePower_boiler,
    conversionFactor: 9809.5,
    system: unitSystem[UnitSystem.boiler],
  ),
  createUnit(
    'horsepower',
    createSymbol(
      const [
        SymbolPart.lH,
        SymbolPart.lP,
      ],
    ),
    PowerUnit.horsePower_electric,
    conversionFactor: 746,
    system: unitSystem[UnitSystem.electric],
  ),
  createUnit(
    'horsepower',
    createSymbol(
      const [
        SymbolPart.lH,
        SymbolPart.lP,
      ],
    ),
    PowerUnit.horsePower_mechanical,
    conversionFactor: 550 * _footPoundForceToJoule,
    system: unitSystem[UnitSystem.mechanical],
  ),
  createUnit(
    'horsepower',
    createSymbol(
      const [
        SymbolPart.lH,
        SymbolPart.lP,
      ],
    ),
    PowerUnit.horsePower_metric,
    conversionFactor: 735.49875,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'tonne of refrigeration',
    createSymbol(
      const [
        SymbolPart.clR,
        SymbolPart.clT,
      ],
    ),
    PowerUnit.tonneOfRefrigeration,
    conversionFactor: 3516.8528420667,
    americanName: 'ton of refrigeration',
  ),
};

/// Power unit details
final powerUnitDetails = {
  ..._caloriePerHourVariations_intlSteamTable,
  ..._caloriePerMinuteVariations_intlSteamTable,
  ..._caloriePerSecondVariations_intlSteamTable,
  ..._joulePerHourVariations,
  ..._joulePerMinuteVariations,
  ..._joulePerSecondVariations,
  ..._wattVariations,
  ..._otherUnits,
};
