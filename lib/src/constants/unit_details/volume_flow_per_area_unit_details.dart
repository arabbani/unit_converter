import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../enums/unit_system.dart';
import '../../enums/volume_flow_per_area_unit.dart';
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
final _gallonToCubicMetre_USLiquid =
    conversionFactor(Converter.volume, VolumeUnit.gallon_usLiquid);
final _litreToCubicMetre = conversionFactor(Converter.volume, VolumeUnit.litre);
final _minuteToSecond = conversionFactor(Converter.time, TimeUnit.minute);

/// Volume flow per area unit details
final volumeFlowPerAreaUnitDetails = {
  createUnit(
    'cubic metre per second per acre',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    VolumeFlowPerAreaUnit.cubicMetrePerSecondPerAcre,
    conversionFactor: 1 / _acreToSquareMetre,
    americanName: 'cubic meter per second per acre',
  ),
  createUnit(
    'cubic metre per second per hectare',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    VolumeFlowPerAreaUnit.cubicMetrePerSecondPerHectare,
    conversionFactor: 1 / _hectareToSquareMetre,
    americanName: 'cubic meter per second per hectare',
  ),
  createUnit(
    'cubic metre per second per square metre',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.cubicMetrePerSecondPerSquareMetre,
    conversionFactor: 1,
    americanName: 'cubic meter per second per square meter',
  ),
  createUnit(
    'cubic metre per second per square mile',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.cubicMetrePerSecondPerSquareMile,
    conversionFactor: 1 / _squareMileToSquareMetre,
    americanName: 'cubic meter per second per square mile',
  ),
  createUnit(
    'cubic metre per second per square yard',
    createSymbol(
      const [
        SymbolPart.metre,
        SymbolPart.superscriptThree,
        SymbolPart.forwardSlash,
        SymbolPart.second,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.cubicMetrePerSecondPerSquareYard,
    conversionFactor: 1 / _squareYardToSquareMetre,
    americanName: 'cubic meter per second per square yard',
  ),
  createUnit(
    'gallon per minute per acre',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    VolumeFlowPerAreaUnit.gallonPerMinutePerAcre_usLiquid,
    conversionFactor:
        _gallonToCubicMetre_USLiquid / (_minuteToSecond * _acreToSquareMetre),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per minute per hectare',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    VolumeFlowPerAreaUnit.gallonPerMinutePerHectare_usLiquid,
    conversionFactor: _gallonToCubicMetre_USLiquid /
        (_minuteToSecond * _hectareToSquareMetre),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per minute per square metre',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.gallonPerMinutePerSquareMetre_usLiquid,
    conversionFactor: _gallonToCubicMetre_USLiquid / _minuteToSecond,
    americanName: 'gallon per minute per square meter',
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per minute per square mile',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.gallonPerMinutePerSquareMile_usLiquid,
    conversionFactor: _gallonToCubicMetre_USLiquid /
        (_minuteToSecond * _squareMileToSquareMetre),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'gallon per minute per square yard',
    createSymbol(
      const [
        SymbolPart.gallon,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.gallonPerMinutePerSquareYard_usLiquid,
    conversionFactor: _gallonToCubicMetre_USLiquid /
        (_minuteToSecond * _squareYardToSquareMetre),
    system: unitSystem[UnitSystem.usLiquid],
  ),
  createUnit(
    'litre per minute per acre',
    createSymbol(
      const [
        SymbolPart.litre,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    VolumeFlowPerAreaUnit.litrePerMinutePerAcre,
    conversionFactor:
        _litreToCubicMetre / (_minuteToSecond * _acreToSquareMetre),
    americanName: 'liter per minute per acre',
  ),
  createUnit(
    'litre per minute per hectare',
    createSymbol(
      const [
        SymbolPart.litre,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.hectare,
      ],
    ),
    VolumeFlowPerAreaUnit.litrePerMinutePerHectare,
    conversionFactor:
        _litreToCubicMetre / (_minuteToSecond * _hectareToSquareMetre),
    americanName: 'liter per minute per hectare',
  ),
  createUnit(
    'litre per minute per square metre',
    createSymbol(
      const [
        SymbolPart.litre,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.metre,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.litrePerMinutePerSquareMetre,
    conversionFactor: _litreToCubicMetre / _minuteToSecond,
    americanName: 'liter per minute per square meter',
  ),
  createUnit(
    'litre per minute per square mile',
    createSymbol(
      const [
        SymbolPart.litre,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.mile,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.litrePerMinutePerSquareMile,
    conversionFactor:
        _litreToCubicMetre / (_minuteToSecond * _squareMileToSquareMetre),
    americanName: 'liter per minute per square mile',
  ),
  createUnit(
    'litre per minute per square yard',
    createSymbol(
      const [
        SymbolPart.litre,
        SymbolPart.forwardSlash,
        SymbolPart.minute,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.superscriptTwo,
      ],
    ),
    VolumeFlowPerAreaUnit.litrePerMinutePerSquareYard,
    conversionFactor:
        _litreToCubicMetre / (_minuteToSecond * _squareYardToSquareMetre),
    americanName: 'liter per minute per square yard',
  ),
};
