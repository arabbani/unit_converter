import '../../enums/converter.dart';
import '../../enums/kinematic_viscocity_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

final _dayToSecond = conversionFactor(Converter.time, TimeUnit.day);
final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);

/// __stokes variations
final _stokesVariations = createUnitVariation(
  KinematicViscocityUnit.values,
  '${variationUnitNameSeperator}stokes',
  0.0001,
  decimalPrefixes,
  namePostfix: 'stokes',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.stokes,
    ],
  ),
);

/// square __metre per day variations
final _squareMetrePerDayVariations = createUnitVariation(
  KinematicViscocityUnit.values,
  'square${variationUnitNameSeperator}MetrePerDay',
  1 / _dayToSecond,
  decimalPrefixes,
  namePrefix: 'square ',
  namePostfix: 'metre per day',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
      SymbolPart.forwardSlash,
      SymbolPart.day,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'square ',
  americanNamePostfix: 'meter per day',
  powerOfVariationConversionFactor: 2,
);

/// square __metre per hour variations
final _squareMetrePerHourVariations = createUnitVariation(
  KinematicViscocityUnit.values,
  'square${variationUnitNameSeperator}MetrePerHour',
  1 / _hourToSecond,
  decimalPrefixes,
  namePrefix: 'square ',
  namePostfix: 'metre per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'square ',
  americanNamePostfix: 'meter per hour',
  powerOfVariationConversionFactor: 2,
);

/// square __metre per minute variations
final _squareMetrePerMinuteVariations = createUnitVariation(
  KinematicViscocityUnit.values,
  'square${variationUnitNameSeperator}MetrePerMinute',
  1 / _minuteToSecond,
  decimalPrefixes,
  namePrefix: 'square ',
  namePostfix: 'metre per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'square ',
  americanNamePostfix: 'meter per minute',
  powerOfVariationConversionFactor: 2,
);

/// square __metre per second variations
final _squareMetrePerSecondVariations = createUnitVariation(
  KinematicViscocityUnit.values,
  'square${variationUnitNameSeperator}MetrePerSecond',
  1,
  decimalPrefixes,
  namePrefix: 'square ',
  namePostfix: 'metre per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'square ',
  americanNamePostfix: 'meter per second',
  powerOfVariationConversionFactor: 2,
);

/// Kinematic viscocity unit details
final kinematicViscocityUnitDetails = {
  ..._stokesVariations,
  ..._squareMetrePerDayVariations,
  ..._squareMetrePerHourVariations,
  ..._squareMetrePerMinuteVariations,
  ..._squareMetrePerSecondVariations,
};
