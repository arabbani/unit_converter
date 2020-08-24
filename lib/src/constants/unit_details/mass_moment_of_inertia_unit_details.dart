import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/mass_moment_of_inertia_unit.dart';
import '../../enums/mass_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';
import '../others/misc.dart';

final _gramToKiloGram = conversionFactor(Converter.mass, MassUnit.gram);
final _poundToKiloGram = conversionFactor(Converter.mass, MassUnit.pound);
final _slugToKiloGram = conversionFactor(Converter.mass, MassUnit.slug);
final _squareFootToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareFoot);
final _squareInchToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareInch);

// gram square __metre variations
final _intermediateGramSquareMetreVariations = createUnitVariation(
  MassMomentOfInertiaUnit.values,
  'gramSquare${variationUnitNameSeperator}Metre',
  _gramToKiloGram,
  decimalPrefixes,
  namePrefix: 'gram square ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.space,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
      SymbolPart.superscriptTwo,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'gram square ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: 2,
);

/// __gram square __metre variations
final _gramSquareMetreVariations = {
  for (var unit in _intermediateGramSquareMetreVariations)
    ...create(unit, MassMomentOfInertiaUnit.values)
};

/// other units
final _otherUnits = {
  createUnit(
    'pound square foot',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.space,
        SymbolPart.foot,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassMomentOfInertiaUnit.poundSquareFoot,
    conversionFactor: _poundToKiloGram * _squareFootToSquareMetre,
  ),
  createUnit(
    'pound square inch',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.space,
        SymbolPart.inch,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassMomentOfInertiaUnit.poundSquareInch,
    conversionFactor: _poundToKiloGram * _squareInchToSquareMetre,
  ),
  createUnit(
    'slug square foot',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.space,
        SymbolPart.foot,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassMomentOfInertiaUnit.slugSquareFoot,
    conversionFactor: _slugToKiloGram * _squareFootToSquareMetre,
  ),
  createUnit(
    'slug square inch',
    createSymbol(
      const [
        SymbolPart.slug,
        SymbolPart.space,
        SymbolPart.inch,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassMomentOfInertiaUnit.slugSquareInch,
    conversionFactor: _slugToKiloGram * _squareInchToSquareMetre,
  ),
};

/// Mass moment of inertia unit details
final massMomentOfInertiaUnitDetails = {
  ..._gramSquareMetreVariations,
  ..._otherUnits,
};
