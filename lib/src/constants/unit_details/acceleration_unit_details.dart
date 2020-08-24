import 'dart:math' show pow;

import '../../enums/acceleration_unit.dart';
import '../../enums/converter.dart';
import '../../enums/length_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);
final _footToMetre = conversionFactor(Converter.length, LengthUnit.foot);
final _inchToMetre = conversionFactor(Converter.length, LengthUnit.inch);
final _mileToMetre = conversionFactor(Converter.length, LengthUnit.mile);
final _yardToMetre = conversionFactor(Converter.length, LengthUnit.yard);

/// __gal variations
final _galVariations = createUnitVariation(
  AccelerationUnit.values,
  '${variationUnitNameSeperator}gal',
  .01,
  decimalPrefixes,
  namePostfix: 'gal',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gal,
    ],
  ),
);

/// __metre per hour per second variations
final _metrePerHourPerSecondVariations = createUnitVariation(
  AccelerationUnit.values,
  '${variationUnitNameSeperator}metrePerHourPerSecond',
  1 / _hourToSecond,
  decimalPrefixes,
  namePostfix: 'metre per hour per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per hour per second',
);

/// __metre per hour squared variations
final _metrePerHourSquaredVariations = createUnitVariation(
  AccelerationUnit.values,
  '${variationUnitNameSeperator}metrePerHourSquared',
  1 / pow(_hourToSecond, 2),
  decimalPrefixes,
  namePostfix: 'metre per hour squared',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per hour squared',
);

/// __metre per minute per second variations
final _metrePerMinutePerSecondVariations = createUnitVariation(
  AccelerationUnit.values,
  '${variationUnitNameSeperator}metrePerMinutePerSecond',
  1 / _minuteToSecond,
  decimalPrefixes,
  namePostfix: 'metre per minute per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per minute per second',
);

/// __metre per minute squared variations
final _metrePerMinuteSquaredVariations = createUnitVariation(
  AccelerationUnit.values,
  '${variationUnitNameSeperator}metrePerMinuteSquared',
  1 / pow(_minuteToSecond, 2),
  decimalPrefixes,
  namePostfix: 'metre per minute squared',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per minute squared',
);

/// __metre per second squared variations
final _metrePerSecondSquaredVariations = createUnitVariation(
  AccelerationUnit.values,
  '${variationUnitNameSeperator}metrePerSecondSquared',
  1,
  decimalPrefixes,
  namePostfix: 'metre per second squared',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.forwardSlash,
      SymbolPart.second,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter per second squared',
);

/// other units
final _otherUnits = {
  // foot
  createUnit(
    'foot per hour per second',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.footPerHourPerSecond,
    conversionFactor: _footToMetre / _hourToSecond,
  ),
  createUnit(
    'foot per hour squared',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.footPerHourSquared,
    conversionFactor: _footToMetre / pow(_hourToSecond, 2),
  ),
  createUnit(
    'foot per minute per second',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.footPerMinutePerSecond,
    conversionFactor: _footToMetre / _minuteToSecond,
  ),
  createUnit(
    'foot per minute squared',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.footPerMinuteSquared,
    conversionFactor: _footToMetre / pow(_minuteToSecond, 2),
  ),
  createUnit(
    'foot per second squared',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.footPerSecondSquared,
    conversionFactor: _footToMetre,
  ),

  // inch
  createUnit(
    'inch per hour per second',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.inchPerHourPerSecond,
    conversionFactor: _inchToMetre / _hourToSecond,
  ),
  createUnit(
    'inch per hour squared',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.inchPerHourSquared,
    conversionFactor: _inchToMetre / pow(_hourToSecond, 2),
  ),
  createUnit(
    'inch per minute per second',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.inchPerMinutePerSecond,
    conversionFactor: _inchToMetre / _minuteToSecond,
  ),
  createUnit(
    'inch per minute squared',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.inchPerMinuteSquared,
    conversionFactor: _inchToMetre / pow(_minuteToSecond, 2),
  ),
  createUnit(
    'inch per second squared',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.inchPerSecondSquared,
    conversionFactor: _inchToMetre,
  ),

  // mile
  createUnit(
    'mile per hour per second',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.milePerHourPerSecond,
    conversionFactor: _mileToMetre / _hourToSecond,
  ),
  createUnit(
    'mile per hour squared',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.milePerHourSquared,
    conversionFactor: _mileToMetre / pow(_hourToSecond, 2),
  ),
  createUnit(
    'mile per minute per second',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.milePerMinutePerSecond,
    conversionFactor: _mileToMetre / _minuteToSecond,
  ),
  createUnit(
    'mile per minute squared',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.milePerMinuteSquared,
    conversionFactor: _mileToMetre / pow(_minuteToSecond, 2),
  ),
  createUnit(
    'mile per second squared',
    createSymbol(
      const [
        SymbolPart.mile,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.milePerSecondSquared,
    conversionFactor: _mileToMetre,
  ),

  // yard
  createUnit(
    'yard per hour per second',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.yardPerHourPerSecond,
    conversionFactor: _yardToMetre / _hourToSecond,
  ),
  createUnit(
    'yard per hour squared',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.lH,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.yardPerHourSquared,
    conversionFactor: _yardToMetre / pow(_hourToSecond, 2),
  ),
  createUnit(
    'yard per minute per second',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.second,
      ],
    ),
    AccelerationUnit.yardPerMinutePerSecond,
    conversionFactor: _yardToMetre / _minuteToSecond,
  ),
  createUnit(
    'yard per minute squared',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.yardPerMinuteSquared,
    conversionFactor: _yardToMetre / pow(_minuteToSecond, 2),
  ),
  createUnit(
    'yard per second squared',
    createSymbol(
      const [
        SymbolPart.yard,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.superscriptTwo,
      ],
    ),
    AccelerationUnit.yardPerSecondSquared,
    conversionFactor: _yardToMetre,
  ),

  // others
  createUnit(
    'standard gravity',
    createSymbol(
      const [
        SymbolPart.gravity,
        SymbolPart.subscriptZero,
      ],
    ),
    AccelerationUnit.standardGravity,
    conversionFactor: 9.80665,
  ),
};

/// Acceleration unit details
final accelerationUnitDetails = {
  ..._galVariations,
  ..._metrePerHourPerSecondVariations,
  ..._metrePerHourSquaredVariations,
  ..._metrePerMinutePerSecondVariations,
  ..._metrePerMinuteSquaredVariations,
  ..._metrePerSecondSquaredVariations,
  ..._otherUnits,
};
