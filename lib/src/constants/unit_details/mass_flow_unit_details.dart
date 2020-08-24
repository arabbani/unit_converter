import '../../enums/converter.dart';
import '../../enums/mass_flow_unit.dart';
import '../../enums/mass_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

final _gramToKiloGram = conversionFactor(Converter.mass, MassUnit.gram);
final _grainToKiloGram = conversionFactor(Converter.mass, MassUnit.grain);
final _ounceToKiloGram = conversionFactor(Converter.mass, MassUnit.ounce);
final _poundToKiloGram = conversionFactor(Converter.mass, MassUnit.pound);
final _dayToSecond = conversionFactor(Converter.time, TimeUnit.day);
final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);

/// __gram per day variations
final _gramPerDayVariations = createUnitVariation(
  MassFlowUnit.values,
  '${variationUnitNameSeperator}gramPerDay',
  _gramToKiloGram / _dayToSecond,
  decimalPrefixes,
  namePostfix: 'gram per day',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.day,
    ],
  ),
);

/// __gram per hour variations
final _gramPerHourVariations = createUnitVariation(
  MassFlowUnit.values,
  '${variationUnitNameSeperator}gramPerHour',
  _gramToKiloGram / _hourToSecond,
  decimalPrefixes,
  namePostfix: 'gram per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
);

/// __gram per minute variations
final _gramPerMinuteVariations = createUnitVariation(
  MassFlowUnit.values,
  '${variationUnitNameSeperator}gramPerMinute',
  _gramToKiloGram / _minuteToSecond,
  decimalPrefixes,
  namePostfix: 'gram per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
);

/// __gram per second variations
final _gramPerSecondVariations = createUnitVariation(
  MassFlowUnit.values,
  '${variationUnitNameSeperator}gramPerSecond',
  _gramToKiloGram,
  decimalPrefixes,
  namePostfix: 'gram per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'grain per day',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    MassFlowUnit.grainPerDay,
    conversionFactor: _grainToKiloGram / _dayToSecond,
  ),
  createUnit(
    'grain per hour',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    MassFlowUnit.grainPerHour,
    conversionFactor: _grainToKiloGram / _hourToSecond,
  ),
  createUnit(
    'grain per minute',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    MassFlowUnit.grainPerMinute,
    conversionFactor: _grainToKiloGram / _minuteToSecond,
  ),
  createUnit(
    'grain per second',
    createSymbol(
      const [
        SymbolPart.grain,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    MassFlowUnit.grainPerSecond,
    conversionFactor: _grainToKiloGram,
  ),
  createUnit(
    'ounce per day',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    MassFlowUnit.ouncePerDay,
    conversionFactor: _ounceToKiloGram / _dayToSecond,
  ),
  createUnit(
    'ounce per hour',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    MassFlowUnit.ouncePerHour,
    conversionFactor: _ounceToKiloGram / _hourToSecond,
  ),
  createUnit(
    'ounce per minute',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    MassFlowUnit.ouncePerMinute,
    conversionFactor: _ounceToKiloGram / _minuteToSecond,
  ),
  createUnit(
    'ounce per second',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    MassFlowUnit.ouncePerSecond,
    conversionFactor: _ounceToKiloGram,
  ),
  createUnit(
    'pound per day',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    MassFlowUnit.poundPerDay,
    conversionFactor: _poundToKiloGram / _dayToSecond,
  ),
  createUnit(
    'pound per hour',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    MassFlowUnit.poundPerHour,
    conversionFactor: _poundToKiloGram / _hourToSecond,
  ),
  createUnit(
    'pound per minute',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    MassFlowUnit.poundPerMinute,
    conversionFactor: _poundToKiloGram / _minuteToSecond,
  ),
  createUnit(
    'pound per second',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    MassFlowUnit.poundPerSecond,
    conversionFactor: _poundToKiloGram,
  ),
};

/// Mass fluw unit details
final massFlowUnitDetails = {
  ..._gramPerDayVariations,
  ..._gramPerHourVariations,
  ..._gramPerMinuteVariations,
  ..._gramPerSecondVariations,
  ..._otherUnits,
};
