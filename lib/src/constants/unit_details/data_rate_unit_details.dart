import '../../enums/converter.dart';
import '../../enums/data_rate_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

final _hourToSecond = conversionFactor(Converter.time, TimeUnit.hour);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);
const double _byteToBit = 8;

/// __bit per hour variations
final _bitPerHourVariations = createUnitVariation(
  DataRateUnit.values,
  '${variationUnitNameSeperator}bitPerHour',
  1 / _hourToSecond,
  binaryPrefixes,
  namePostfix: 'bit per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.bit,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// __bit per minute variations
final _bitPerMinuteVariations = createUnitVariation(
  DataRateUnit.values,
  '${variationUnitNameSeperator}bitPerMinute',
  1 / _minuteToSecond,
  binaryPrefixes,
  namePostfix: 'bit per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.bit,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// __bit per second variations
final _bitPerSecondVariations = createUnitVariation(
  DataRateUnit.values,
  '${variationUnitNameSeperator}bitPerSecond',
  1,
  binaryPrefixes,
  namePostfix: 'bit per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.bit,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// __byte per hour variations
final _bytePerHourVariations = createUnitVariation(
  DataRateUnit.values,
  '${variationUnitNameSeperator}bytePerHour',
  _byteToBit / _hourToSecond,
  binaryPrefixes,
  namePostfix: 'byte per hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.byte,
      SymbolPart.forwardSlash,
      SymbolPart.lH,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// __byte per minute variations
final _bytePerMinuteVariations = createUnitVariation(
  DataRateUnit.values,
  '${variationUnitNameSeperator}bytePerMinute',
  _byteToBit / _minuteToSecond,
  binaryPrefixes,
  namePostfix: 'byte per minute',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.byte,
      SymbolPart.forwardSlash,
      SymbolPart.minute,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// __byte per second variations
final _bytePerSecondVariations = createUnitVariation(
  DataRateUnit.values,
  '${variationUnitNameSeperator}bytePerSecond',
  _byteToBit,
  binaryPrefixes,
  namePostfix: 'byte per second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.byte,
      SymbolPart.forwardSlash,
      SymbolPart.second,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// Data rate unit details
final dataRateUnitDetails = {
  ..._bitPerHourVariations,
  ..._bitPerMinuteVariations,
  ..._bitPerSecondVariations,
  ..._bytePerHourVariations,
  ..._bytePerMinuteVariations,
  ..._bytePerSecondVariations,
};
