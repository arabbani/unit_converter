import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../enums/volume_per_area_unit.dart';
import '../../enums/volume_unit.dart';
import '../../misc/global.dart';
import '../others/unit_system.dart';

final _acreToSquareMetre = conversionFactor(Converter.area, AreaUnit.acre);
final _hectareToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.hectare);
final _squareMileToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareMile);
final _squareYardToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareYard);
final _gallonToCubicMetre_usLiquid =
    conversionFactor(Converter.volume, VolumeUnit.gallon_usLiquid);
final _litreToCubicMetre = conversionFactor(Converter.volume, VolumeUnit.litre);

/// Volume per area unit details
final volumePerAreaUnitDetails = {
  createUnit(
    'cubic metre per acre',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    VolumePerAreaUnit.cubicMetrePerAcre,
    conversionFactor: 1 / _acreToSquareMetre,
    americanName: 'cubic meter per acre',
  ),
  createUnit(
    'cubic metre per hectare',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    VolumePerAreaUnit.cubicMetrePerHectare,
    conversionFactor: 1 / _hectareToSquareMetre,
    americanName: 'cubic meter per hectare',
  ),
  createUnit(
    'cubic metre per square metre',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.cubicMetrePerSquareMetre,
    conversionFactor: 1,
    americanName: 'cubic meter per square meter',
  ),
  createUnit(
    'cubic metre per square mile',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.cubicMetrePerSquareMile,
    conversionFactor: 1 / _squareMileToSquareMetre,
    americanName: 'cubic meter per square mile',
  ),
  createUnit(
    'cubic metre per square yard',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.cubicMetrePerSquareYard,
    conversionFactor: 1 / _squareYardToSquareMetre,
    americanName: 'cubic meter per square yard',
  ),
  createUnit(
    'gallon per acre',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    VolumePerAreaUnit.gallonPerAcre_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _acreToSquareMetre,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per hectare',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    VolumePerAreaUnit.gallonPerHectare_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _hectareToSquareMetre,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per square metre',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.gallonPerSquareMetre_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid,
    americanName: 'gallon per square meter',
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per square mile',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.gallonPerSquareMile_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _squareMileToSquareMetre,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per square yard',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.gallonPerSquareYard_usLiquid,
    conversionFactor: _gallonToCubicMetre_usLiquid / _squareYardToSquareMetre,
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'litre per acre',
    createSymbol(
      const [
        SymbolPart.lL,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    VolumePerAreaUnit.litrePerAcre,
    conversionFactor: _litreToCubicMetre / _acreToSquareMetre,
    americanName: 'liter per acre',
  ),
  createUnit(
    'litre per hectare',
    createSymbol(
      const [
        SymbolPart.lL,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    VolumePerAreaUnit.litrePerHectare,
    conversionFactor: _litreToCubicMetre / _hectareToSquareMetre,
    americanName: 'liter per hectare',
  ),
  createUnit(
    'litre per square metre',
    createSymbol(
      const [
        SymbolPart.lL,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.litrePerSquareMetre,
    conversionFactor: _litreToCubicMetre,
    americanName: 'liter per square meter',
  ),
  createUnit(
    'litre per square mile',
    createSymbol(
      const [
        SymbolPart.lL,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.litrePerSquareMile,
    conversionFactor: _litreToCubicMetre / _squareMileToSquareMetre,
    americanName: 'liter per square mile',
  ),
  createUnit(
    'litre per square yard',
    createSymbol(
      const [
        SymbolPart.lL,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumePerAreaUnit.litrePerSquareYard,
    conversionFactor: _litreToCubicMetre / _squareYardToSquareMetre,
    americanName: 'liter per square yard',
  ),
};
