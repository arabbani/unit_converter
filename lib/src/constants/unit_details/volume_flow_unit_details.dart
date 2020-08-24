import 'dart:math' show pow;

import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/length_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../enums/unit_system.dart';
import '../../enums/volume_flow_unit.dart';
import '../../enums/volume_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

final _acreToSquareMetre = conversionFactor(Converter.area, AreaUnit.acre);
final _footToMetre = conversionFactor(Converter.length, LengthUnit.foot);
final _inchToMetre = conversionFactor(Converter.length, LengthUnit.inch);
final _litreToCubicMetre = conversionFactor(Converter.volume, VolumeUnit.litre);
final _gallonToCubicMetre_imperial =
    conversionFactor(Converter.volume, VolumeUnit.gallon_imperial);
final _gallonToCubicMetre_usLiquid =
    conversionFactor(Converter.volume, VolumeUnit.gallon_usLiquid);
final _oilBarrelToCubicMetre =
    conversionFactor(Converter.volume, VolumeUnit.oilBarrel);
final _dayToSecond = conversionFactor(Converter.time, TimeUnit.day);
final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);
final _yearToSecond = conversionFactor(Converter.time, TimeUnit.year);

/// __litre per day variations
final _litrePerDayVariations = createUnitVariation(
  VolumeFlowUnit.values,
  '${variationUnitNameSeperator}litrePerDay',
  _litreToCubicMetre / _dayToSecond,
  decimalPrefixes,
  namePostfix: 'litre per day',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
      SymbolPart.forwardSlash,
      SymbolPart.day,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'liter per day',
);

/// __litre per hour variations
final _litrePerHourVariations = createUnitVariation(
  VolumeFlowUnit.values,
  '${variationUnitNameSeperator}litrePerHour',
  _litreToCubicMetre / _hourToSecond,
  decimalPrefixes,
  namePostfix: 'litre per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'liter per hour',
);

/// __litre per minute variations
final _litrePerMinuteVariations = createUnitVariation(
  VolumeFlowUnit.values,
  '${variationUnitNameSeperator}litrePerMinute',
  _litreToCubicMetre / _minuteToSecond,
  decimalPrefixes,
  namePostfix: 'litre per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'liter per minute',
);

/// __litre per second variations
final _litrePerSecondVariations = createUnitVariation(
  VolumeFlowUnit.values,
  '${variationUnitNameSeperator}litrePerSecond',
  _litreToCubicMetre,
  decimalPrefixes,
  namePostfix: 'litre per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.litre,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'liter per second',
);

/// cubic __metre per day variations
final _cubicMetrePerDayVariations = createUnitVariation(
  VolumeFlowUnit.values,
  'cubic${variationUnitNameSeperator}MetrePerDay',
  1 / _dayToSecond,
  decimalPrefixes,
  namePrefix: 'cubic ',
  namePostfix: 'metre per day',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
      SymbolPart.forwardSlash,
      SymbolPart.day,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'cubic ',
  americanNamePostfix: 'meter per day',
  powerOfVariationConversionFactor: 3,
);

/// cubic __metre per hour variations
final _cubicMetrePerHourVariations = createUnitVariation(
  VolumeFlowUnit.values,
  'cubic${variationUnitNameSeperator}MetrePerHour',
  1 / _hourToSecond,
  decimalPrefixes,
  namePrefix: 'cubic ',
  namePostfix: 'metre per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'cubic ',
  americanNamePostfix: 'meter per hour',
  powerOfVariationConversionFactor: 3,
);

/// cubic __metre per minute variations
final _cubicMetrePerMinuteVariations = createUnitVariation(
  VolumeFlowUnit.values,
  'cubic${variationUnitNameSeperator}MetrePerMinute',
  1 / _minuteToSecond,
  decimalPrefixes,
  namePrefix: 'cubic ',
  namePostfix: 'metre per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'cubic ',
  americanNamePostfix: 'meter per minute',
  powerOfVariationConversionFactor: 3,
);

/// cubic __metre per second variations
final _cubicMetrePerSecondVariations = createUnitVariation(
  VolumeFlowUnit.values,
  'cubic${variationUnitNameSeperator}MetrePerSecond',
  1,
  decimalPrefixes,
  namePrefix: 'cubic ',
  namePostfix: 'metre per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptThree,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'cubic ',
  americanNamePostfix: 'meter per second',
  powerOfVariationConversionFactor: 3,
);

/// other units
final _otherUnits = {
  createUnit(
    'acre-foot per day',
    createSymbol(
      const [
        SymbolPart.acre,
        SymbolPart.space,
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.acreFootPerDay,
    conversionFactor: _acreToSquareMetre * _footToMetre / _dayToSecond,
  ),
  createUnit(
    'acre-foot per year',
    createSymbol(
      const [
        SymbolPart.acre,
        SymbolPart.space,
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.lY,
      ],
    ),
    VolumeFlowUnit.acreFootPerYear,
    conversionFactor: _acreToSquareMetre * _footToMetre / _yearToSecond,
    system: unitSystem[UnitSystem.gregorian],
  ),
  createUnit(
    'cubic foot per day',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.cubicFootPerDay,
    conversionFactor: pow(_footToMetre, 3) / _dayToSecond,
  ),
  createUnit(
    'cubic foot per hour',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    VolumeFlowUnit.cubicFootPerHour,
    conversionFactor: pow(_footToMetre, 3) / _hourToSecond,
  ),
  createUnit(
    'cubic foot per minute',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    VolumeFlowUnit.cubicFootPerMinute,
    conversionFactor: pow(_footToMetre, 3) / _minuteToSecond,
  ),
  createUnit(
    'cubic foot per second',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    VolumeFlowUnit.cubicFootPerSecond,
    conversionFactor: pow(_footToMetre, 3),
  ),
  createUnit(
    'cubic inch per day',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.cubicInchPerDay,
    conversionFactor: pow(_inchToMetre, 3) / _dayToSecond,
  ),
  createUnit(
    'cubic inch per hour',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    VolumeFlowUnit.cubicInchPerHour,
    conversionFactor: pow(_inchToMetre, 3) / _hourToSecond,
  ),
  createUnit(
    'cubic inch per minute',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    VolumeFlowUnit.cubicInchPerMinute,
    conversionFactor: pow(_inchToMetre, 3) / _minuteToSecond,
  ),
  createUnit(
    'cubic inch per second',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    VolumeFlowUnit.cubicInchPerSecond,
    conversionFactor: pow(_inchToMetre, 3),
  ),
  createUnit(
    'gallon per day',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.gallonPerDay_imperial,
    conversionFactor: _gallonToCubicMetre_imperial / _dayToSecond,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'gallon per day',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.gallonPerDay_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _dayToSecond,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per hour',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    VolumeFlowUnit.gallonPerHour_imperial,
    conversionFactor: _gallonToCubicMetre_imperial / _hourToSecond,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'gallon per hour',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    VolumeFlowUnit.gallonPerHour_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _hourToSecond,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per minute',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    VolumeFlowUnit.gallonPerMinute_imperial,
    conversionFactor: _gallonToCubicMetre_imperial / _minuteToSecond,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'gallon per minute',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    VolumeFlowUnit.gallonPerMinute_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _minuteToSecond,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per second',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    VolumeFlowUnit.gallonPerSecond_imperial,
    conversionFactor: _gallonToCubicMetre_imperial,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'gallon per second',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    VolumeFlowUnit.gallonPerSecond_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'million gallon per day',
    createSymbol(
      const [
        SymbolPart.mega,
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.millionGallonPerDay_imperial,
    conversionFactor: _gallonToCubicMetre_imperial * pow(10, 6) / _dayToSecond,
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'million gallon per day',
    createSymbol(
      const [
        SymbolPart.mega,
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.millionGallonPerDay_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid * pow(10, 6) / _dayToSecond,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'oil barrel per day',
    createSymbol(
      const [
        SymbolPart.oilBarrel,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    VolumeFlowUnit.oilBarrelPerDay,
    conversionFactor: _oilBarrelToCubicMetre / _dayToSecond,
  ),
  createUnit(
    'oil barrel per hour',
    createSymbol(
      const [
        SymbolPart.oilBarrel,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    VolumeFlowUnit.oilBarrelPerHour,
    conversionFactor: _oilBarrelToCubicMetre / _hourToSecond,
  ),
  createUnit(
    'oil barrel per minute',
    createSymbol(
      const [
        SymbolPart.oilBarrel,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    VolumeFlowUnit.oilBarrelPerMinute,
    conversionFactor: _oilBarrelToCubicMetre / _minuteToSecond,
  ),
  createUnit(
    'oil barrel per second',
    createSymbol(
      const [
        SymbolPart.oilBarrel,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    VolumeFlowUnit.oilBarrelPerSecond,
    conversionFactor: _oilBarrelToCubicMetre,
  ),
};

/// Volume flow unit details
final volumeFlowUnitDetails = {
  ..._litrePerDayVariations,
  ..._litrePerHourVariations,
  ..._litrePerMinuteVariations,
  ..._litrePerSecondVariations,
  ..._cubicMetrePerDayVariations,
  ..._cubicMetrePerHourVariations,
  ..._cubicMetrePerMinuteVariations,
  ..._cubicMetrePerSecondVariations,
  ..._otherUnits,
};
