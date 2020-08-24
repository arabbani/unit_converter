import 'dart:math' show pow;

import '../../enums/radioactivity_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __becquerel variations
final _becquerelVariations = createUnitVariation(
  RadioactivityUnit.values,
  '${variationUnitNameSeperator}becquerel',
  1,
  decimalPrefixes,
  namePostfix: 'becquerel',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.becquerel,
    ],
  ),
);

/// __curie variations
final _curieVariations = createUnitVariation(
  RadioactivityUnit.values,
  '${variationUnitNameSeperator}curie',
  3.7 * pow(10, 10),
  decimalPrefixes,
  namePostfix: 'curie',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.curie,
    ],
  ),
);

/// __rutherford variations
final _rutherfordVariations = createUnitVariation(
  RadioactivityUnit.values,
  '${variationUnitNameSeperator}rutherford',
  1000000,
  decimalPrefixes,
  namePostfix: 'rutherford',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.rutherford,
    ],
  ),
);

/// Radioactivity unit details
final radioactivityUnitDetails = {
  ..._becquerelVariations,
  ..._curieVariations,
  ..._rutherfordVariations,
};
