import 'dart:math' show pow;

import '../../enums/capacitance_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __farad variations
final _faradVariations = createUnitVariation(
  CapacitanceUnit.values,
  '${variationUnitNameSeperator}farad',
  1,
  decimalPrefixes,
  namePostfix: 'farad',
  symbolPostfix: createSymbol(
    [
      SymbolPart.farad,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'abfarad',
    createSymbol(
      const [
        SymbolPart.ab,
        SymbolPart.farad,
      ],
    ),
    CapacitanceUnit.abFarad,
    conversionFactor: pow(10, 9),
    variation: true,
  ),
};

/// Capacitance unit details
final capacitanceUnitDetails = {
  ..._faradVariations,
  ..._otherUnits,
};
