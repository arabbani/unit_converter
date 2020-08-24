import 'dart:math' show pow;

import '../../enums/magnetic_flux_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __weber variations
final _weberVariations = createUnitVariation(
  MagneticFluxUnit.values,
  '${variationUnitNameSeperator}weber',
  1,
  decimalPrefixes,
  namePostfix: 'weber',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.weber,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'maxwell',
    createSymbol(
      const [
        SymbolPart.maxwell,
      ],
    ),
    MagneticFluxUnit.maxwell,
    conversionFactor: pow(10, -8),
  ),
};

/// Magnetic flux unit details
final magneticFluxUnitDetails = {
  ..._weberVariations,
  ..._otherUnits,
};
