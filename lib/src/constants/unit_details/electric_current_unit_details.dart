import '../../enums/electric_current_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __ampere variations
final _ampereVariations = createUnitVariation(
  ElectricCurrentUnit.values,
  '${variationUnitNameSeperator}ampere',
  1,
  decimalPrefixes,
  namePostfix: 'ampere',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.ampere,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'abampere',
    createSymbol(
      const [
        SymbolPart.ab,
        SymbolPart.ampere,
      ],
    ),
    ElectricCurrentUnit.abAmpere,
    conversionFactor: 10,
    variation: true,
  ),
};

/// Electric current unit details
final electricCurrentUnitDetails = {
  ..._ampereVariations,
  ..._otherUnits,
};
