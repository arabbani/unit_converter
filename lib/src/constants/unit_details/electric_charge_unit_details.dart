import '../../enums/electric_charge_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __coulomb variations
final _coulombVariations = createUnitVariation(
  ElectricChargeUnit.values,
  '${variationUnitNameSeperator}coulomb',
  1,
  decimalPrefixes,
  namePostfix: 'coulomb',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.coulomb,
    ],
  ),
);

/// __ampere-hour variations
final _ampereHourVariations = createUnitVariation(
  ElectricChargeUnit.values,
  '${variationUnitNameSeperator}ampereHour',
  3600,
  decimalPrefixes,
  namePostfix: 'ampere-hour',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.ampere,
      SymbolPart.lH,
    ],
  ),
);

/// __ampere-second variations
final _ampereSecondVariations = createUnitVariation(
  ElectricChargeUnit.values,
  '${variationUnitNameSeperator}ampereSecond',
  1,
  decimalPrefixes,
  namePostfix: 'ampere-second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.ampere,
      SymbolPart.second,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'abcoulomb',
    createSymbol(
      const [
        SymbolPart.ab,
        SymbolPart.coulomb,
      ],
    ),
    ElectricChargeUnit.abCoulomb,
    conversionFactor: 10,
    variation: true,
  ),
};

/// Electric charge unit details
final electricChargeUnitDetails = {
  ..._coulombVariations,
  ..._ampereHourVariations,
  ..._ampereSecondVariations,
  ..._otherUnits,
};
