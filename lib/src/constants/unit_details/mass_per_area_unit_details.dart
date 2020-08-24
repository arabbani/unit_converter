import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/mass_per_area_unit.dart';
import '../../enums/mass_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/unit_system.dart';

final _acreToSquareMetre = conversionFactor(Converter.area, AreaUnit.acre);
final _hectareToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.hectare);
final _squareMileToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareMile);
final _squareYardToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareYard);

final _longTonneToKiloGram =
    conversionFactor(Converter.mass, MassUnit.longTonne);
final _shortTonneToKiloGram =
    conversionFactor(Converter.mass, MassUnit.shortTonne);
final _poundToKiloGram = conversionFactor(Converter.mass, MassUnit.pound);
final _tonneToKiloGram = conversionFactor(Converter.mass, MassUnit.tonne);

/// Mass per area unit details
final massPerAreaUnitDetails = {
  createUnit(
    'kilogram per acre',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    MassPerAreaUnit.kiloGramPerAcre,
    conversionFactor: 1 / _acreToSquareMetre,
  ),
  createUnit(
    'kilogram per hectare',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    MassPerAreaUnit.kiloGramPerHectare,
    conversionFactor: 1 / _hectareToSquareMetre,
  ),
  createUnit(
    'kilogram per square metre',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.kiloGramPerSquareMetre,
    conversionFactor: 1,
    americanName: 'kilogram per square meter',
  ),
  createUnit(
    'kilogram per square mile',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.kiloGramPerSquareMile,
    conversionFactor: 1 / _squareMileToSquareMetre,
  ),
  createUnit(
    'kilogram per square yard',
    createSymbol(
      const [
        SymbolPart.kilo,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.kiloGramPerSquareYard,
    conversionFactor: 1 / _squareYardToSquareMetre,
  ),
  createUnit(
    'long tonne per acre',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    MassPerAreaUnit.longTonnePerAcre,
    conversionFactor: _longTonneToKiloGram / _acreToSquareMetre,
    americanName: 'long ton per acre',
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'long tonne per hectare',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    MassPerAreaUnit.longTonnePerHectare,
    conversionFactor: _longTonneToKiloGram / _hectareToSquareMetre,
    americanName: 'long ton per hectare',
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'long tonne per square metre',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.longTonnePerSquareMetre,
    conversionFactor: _longTonneToKiloGram,
    americanName: 'long ton per square meter',
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'long tonne per square mile',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.longTonnePerSquareMile,
    conversionFactor: _longTonneToKiloGram / _squareMileToSquareMetre,
    americanName: 'long ton per square mile',
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'long tonne per square yard',
    createSymbol(
      const [
        SymbolPart.long,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.longTonnePerSquareYard,
    conversionFactor: _longTonneToKiloGram / _squareYardToSquareMetre,
    americanName: 'long ton per square yard',
    system: unitSystem[UnitSystem.imperial],
  ),
  createUnit(
    'pound per acre',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    MassPerAreaUnit.poundPerAcre,
    conversionFactor: _poundToKiloGram / _acreToSquareMetre,
  ),
  createUnit(
    'pound per hectare',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    MassPerAreaUnit.poundPerHectare,
    conversionFactor: _poundToKiloGram / _hectareToSquareMetre,
  ),
  createUnit(
    'pound per square metre',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.poundPerSquareMetre,
    conversionFactor: _poundToKiloGram,
    americanName: 'pound per square meter',
  ),
  createUnit(
    'pound per square mile',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.poundPerSquareMile,
    conversionFactor: _poundToKiloGram / _squareMileToSquareMetre,
  ),
  createUnit(
    'pound per square yard',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.poundPerSquareYard,
    conversionFactor: _poundToKiloGram / _squareYardToSquareMetre,
  ),
  createUnit(
    'short tonne per acre',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    MassPerAreaUnit.shortTonnePerAcre,
    conversionFactor: _shortTonneToKiloGram / _acreToSquareMetre,
    americanName: 'short ton per acre',
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'short tonne per hectare',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    MassPerAreaUnit.shortTonnePerHectare,
    conversionFactor: _shortTonneToKiloGram / _hectareToSquareMetre,
    americanName: 'short ton per hectare',
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'short tonne per square metre',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.shortTonnePerSquareMetre,
    conversionFactor: _shortTonneToKiloGram,
    americanName: 'short ton per square meter',
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'short tonne per square mile',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.shortTonnePerSquareMile,
    conversionFactor: _shortTonneToKiloGram / _squareMileToSquareMetre,
    americanName: 'short ton per square mile',
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'short tonne per square yard',
    createSymbol(
      const [
        SymbolPart.short,
        SymbolPart.space,
        SymbolPart.lT,
        SymbolPart.lN,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.shortTonnePerSquareYard,
    conversionFactor: _shortTonneToKiloGram / _squareYardToSquareMetre,
    americanName: 'short ton per square yard',
    system: unitSystem[UnitSystem.us],
  ),
  createUnit(
    'tonne per acre',
    createSymbol(
      const [
        SymbolPart.tonne,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    MassPerAreaUnit.tonnePerAcre,
    conversionFactor: _tonneToKiloGram / _acreToSquareMetre,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'tonne per hectare',
    createSymbol(
      const [
        SymbolPart.tonne,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    MassPerAreaUnit.tonnePerHectare,
    conversionFactor: _tonneToKiloGram / _hectareToSquareMetre,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'tonne per square metre',
    createSymbol(
      const [
        SymbolPart.tonne,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.tonnePerSquareMetre,
    conversionFactor: _tonneToKiloGram,
    americanName: 'tonne per square meter',
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'tonne per square mile',
    createSymbol(
      const [
        SymbolPart.tonne,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.tonnePerSquareMile,
    conversionFactor: _tonneToKiloGram / _squareMileToSquareMetre,
    system: unitSystem[UnitSystem.metric],
  ),
  createUnit(
    'tonne per square yard',
    createSymbol(
      const [
        SymbolPart.tonne,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    MassPerAreaUnit.tonnePerSquareYard,
    conversionFactor: _tonneToKiloGram / _squareYardToSquareMetre,
    system: unitSystem[UnitSystem.metric],
  ),
};
