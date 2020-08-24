import '../../enums/converter.dart';
import '../../enums/length_unit.dart';
import '../../enums/speed_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

final _dayToSecond = conversionFactor(Converter.time, TimeUnit.day);
final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);

final _footToMetre = conversionFactor(Converter.length, LengthUnit.foot);
final _inchToMetre = conversionFactor(Converter.length, LengthUnit.inch);
final _mileToMetre = conversionFactor(Converter.length, LengthUnit.mile);
final _nauticalMileToMetre =
    conversionFactor(Converter.length, LengthUnit.nauticalMile);
final _yardToMetre = conversionFactor(Converter.length, LengthUnit.yard);

/// __metre per day variations
final _metrePerDayVariations = createUnitVariation(
  SpeedUnit.values,
  '${variationUnitNameSeperator}metrePerDay',
  1 / _dayToSecond,
  decimalPrefixes,
  namePostfix: 'metre per day',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.day,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per day',
);

/// __metre per hour variations
final _metrePerHourVariations = createUnitVariation(
  SpeedUnit.values,
  '${variationUnitNameSeperator}metrePerHour',
  1 / _hourToSecond,
  decimalPrefixes,
  namePostfix: 'metre per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per hour',
);

/// __metre per minute variations
final _metrePerMinuteVariations = createUnitVariation(
  SpeedUnit.values,
  '${variationUnitNameSeperator}metrePerMinute',
  1 / _minuteToSecond,
  decimalPrefixes,
  namePostfix: 'metre per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per minute',
);

/// __metre per second variations
final _metrePerSecondVariations = createUnitVariation(
  SpeedUnit.values,
  '${variationUnitNameSeperator}metrePerSecond',
  1,
  decimalPrefixes,
  namePostfix: 'metre per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per second',
);

/// other units
final _otherUnits = {
  createUnit(
    'foot per day',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    SpeedUnit.footPerDay,
    conversionFactor: _footToMetre / _dayToSecond,
  ),
  createUnit(
    'foot per hour',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    SpeedUnit.footPerHour,
    conversionFactor: _footToMetre / _hourToSecond,
  ),
  createUnit(
    'foot per minute',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    SpeedUnit.footPerMinute,
    conversionFactor: _footToMetre / _minuteToSecond,
  ),
  createUnit(
    'foot per second',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    SpeedUnit.footPerSecond,
    conversionFactor: _footToMetre,
  ),
  createUnit(
    'inch per day',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    SpeedUnit.inchPerDay,
    conversionFactor: _inchToMetre / _dayToSecond,
  ),
  createUnit(
    'inch per hour',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    SpeedUnit.inchPerHour,
    conversionFactor: _inchToMetre / _hourToSecond,
  ),
  createUnit(
    'inch per minute',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    SpeedUnit.inchPerMinute,
    conversionFactor: _inchToMetre / _minuteToSecond,
  ),
  createUnit(
    'inch per second',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    SpeedUnit.inchPerSecond,
    conversionFactor: _inchToMetre,
  ),
  createUnit(
    'knot',
    createSymbol(
      const [
        SymbolPart.knot,
      ],
    ),
    SpeedUnit.knot,
    conversionFactor: 0.514444444,
  ),
  createUnit(
    'mile per day',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    SpeedUnit.milePerDay,
    conversionFactor: _mileToMetre / _dayToSecond,
  ),
  createUnit(
    'mile per hour',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    SpeedUnit.milePerHour,
    conversionFactor: _mileToMetre / _hourToSecond,
  ),
  createUnit(
    'mile per minute',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    SpeedUnit.milePerMinute,
    conversionFactor: _mileToMetre / _minuteToSecond,
  ),
  createUnit(
    'mile per second',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    SpeedUnit.milePerSecond,
    conversionFactor: _mileToMetre,
  ),
  createUnit(
    'nautical mile per hour',
    createSymbol(
      const [
        SymbolPart.nauticalMile,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    SpeedUnit.nauticalMilePerHour,
    conversionFactor: _nauticalMileToMetre / _hourToSecond,
  ),
  createUnit(
    'nautical mile per minute',
    createSymbol(
      const [
        SymbolPart.nauticalMile,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    SpeedUnit.nauticalMilePerMinute,
    conversionFactor: _nauticalMileToMetre / _minuteToSecond,
  ),
  createUnit(
    'nautical mile per second',
    createSymbol(
      const [
        SymbolPart.nauticalMile,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    SpeedUnit.nauticalMilePerSecond,
    conversionFactor: _nauticalMileToMetre,
  ),
  createUnit(
    'yard per day',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.day,
      ],
    ),
    SpeedUnit.yardPerDay,
    conversionFactor: _yardToMetre / _dayToSecond,
  ),
  createUnit(
    'yard per hour',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
      ],
    ),
    SpeedUnit.yardPerHour,
    conversionFactor: _yardToMetre / _hourToSecond,
  ),
  createUnit(
    'yard per minute',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
      ],
    ),
    SpeedUnit.yardPerMinute,
    conversionFactor: _yardToMetre / _minuteToSecond,
  ),
  createUnit(
    'yard per second',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    SpeedUnit.yardPerSecond,
    conversionFactor: _yardToMetre,
  ),
};

/// Speed unit details
final speedUnitDetails = {
  ..._metrePerDayVariations,
  ..._metrePerHourVariations,
  ..._metrePerMinuteVariations,
  ..._metrePerSecondVariations,
  ..._otherUnits,
};
