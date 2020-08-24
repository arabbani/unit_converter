import '../../enums/dynamic_viscocity_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __pascal second variations
final _pascalSecondVariations = createUnitVariation(
  DynamicViscocityUnit.values,
  '${variationUnitNameSeperator}pascalSecond',
  1,
  decimalPrefixes,
  namePostfix: 'pascal second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.pascal,
      SymbolPart.space,
      SymbolPart.second,
    ],
  ),
);

/// __poise variations
final _poiseVariations = createUnitVariation(
  DynamicViscocityUnit.values,
  '${variationUnitNameSeperator}poise',
  0.1,
  decimalPrefixes,
  namePostfix: 'poise',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.poise,
    ],
  ),
);

/// Dynamic viscocity unit details
final dynamicViscocityUnitDetails = {
  ..._pascalSecondVariations,
  ..._poiseVariations,
};
