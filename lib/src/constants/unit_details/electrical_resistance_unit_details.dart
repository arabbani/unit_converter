import 'dart:math' show pow;

import '../../enums/electrical_resistance_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __ohm variations
final _ohmVariations = createUnitVariation(
  ElectricalResistanceUnit.values,
  '${variationUnitNameSeperator}ohm',
  1,
  decimalPrefixes,
  namePostfix: 'ohm',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.ohm,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'abohm',
    createSymbol(
      const [
        SymbolPart.ab,
        SymbolPart.ohm,
      ],
    ),
    ElectricalResistanceUnit.abOhm,
    conversionFactor: pow(10, -9),
    variation: true,
  ),
};

/// Electrical resistance unit details
final electricalResistanceUnitDetails = {
  ..._ohmVariations,
  ..._otherUnits,
};
