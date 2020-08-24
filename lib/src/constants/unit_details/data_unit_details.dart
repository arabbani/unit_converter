import '../../enums/data_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __bit variations
final _bitVariations = createUnitVariation(
  DataUnit.values,
  '${variationUnitNameSeperator}bit',
  1,
  binaryPrefixes,
  namePostfix: 'bit',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.bit,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// __byte variations
final _byteVariations = createUnitVariation(
  DataUnit.values,
  '${variationUnitNameSeperator}byte',
  8,
  binaryPrefixes,
  namePostfix: 'byte',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.byte,
    ],
  ),
  system: UnitSystem.binary,
  appendVariationUnitTypeWithSystemName: true,
);

/// Data unit details
final dataUnitDetails = {
  ..._bitVariations,
  ..._byteVariations,
};
