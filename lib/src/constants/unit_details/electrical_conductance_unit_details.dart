import 'dart:math' show pow;

import '../../enums/electrical_conductance_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __mho variations
final _mhoVariations = createUnitVariation(
  ElectricalConductanceUnit.values,
  '${variationUnitNameSeperator}mho',
  1,
  decimalPrefixes,
  namePostfix: 'mho',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.mho,
    ],
  ),
);

/// __siemens variations
final _siemensVariations = createUnitVariation(
  ElectricalConductanceUnit.values,
  '${variationUnitNameSeperator}siemens',
  1,
  decimalPrefixes,
  namePostfix: 'siemens',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.siemens,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'abmho',
    createSymbol(
      const [
        SymbolPart.ab,
        SymbolPart.mho,
      ],
    ),
    ElectricalConductanceUnit.abMho,
    conversionFactor: pow(10, 9),
    variation: true,
  ),
  createUnit(
    'absiemens',
    createSymbol(
      const [
        SymbolPart.ab,
        SymbolPart.siemens,
      ],
    ),
    ElectricalConductanceUnit.abSiemens,
    conversionFactor: pow(10, 9),
    variation: true,
  ),
};

/// Electrical conductance unit details
final electricalConductanceUnitDetails = {
  ..._mhoVariations,
  ..._siemensVariations,
  ..._otherUnits,
};
