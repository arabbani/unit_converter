import '../../enums/magnetic_flux_density_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

/// __gauss variations
final _gaussVariations = createUnitVariation(
  MagneticFluxDensityUnit.values,
  '${variationUnitNameSeperator}gauss',
  0.0001,
  decimalPrefixes,
  namePostfix: 'gauss',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.gauss,
    ],
  ),
);

/// __tesla variations
final _teslaVariations = createUnitVariation(
  MagneticFluxDensityUnit.values,
  '${variationUnitNameSeperator}tesla',
  1,
  decimalPrefixes,
  namePostfix: 'tesla',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.tesla,
    ],
  ),
);

/// Magnetic flux density unit details
final magneticFluxDensityUnitDetails = {
  ..._gaussVariations,
  ..._teslaVariations,
};
