import '../../enum/area_units.dart';
import '../../enum/conversion_type.dart';
import '../../enum/volume_flow_per_area_units.dart';
import '../../misc/global.dart';
import '../../unit_converter.dart';

final _perAcreToPerSquareMetre =
    1 / getConversionDetail(ConversionType.area, AreaUnits.acre);
final _perHectareToPerSquareMetre =
    1 / getConversionDetail(ConversionType.area, AreaUnits.hectare);
final _perSquareMileToPerSquareMetre =
    1 / getConversionDetail(ConversionType.area, AreaUnits.squareMile);
final _perSquareYardToPerSquareMetre =
    1 / getConversionDetail(ConversionType.area, AreaUnits.squareYard);

final _gallonUSLiquidToCubicMetre =
    getConversionDetail(ConversionType.volume, VolumeUnits.gallon_USLiquid);
final _litreToCubicMetre =
    getConversionDetail(ConversionType.volume, VolumeUnits.litre);

final _perMinuteToPerSecond =
    1 / getConversionDetail(ConversionType.time, TimeUnits.minute);

// Conversion factors to baseUnit
final Map<VolumeFlowPerAreaUnits, double> volumeFlowPerAreaConversionDetails = {
  // Base unit
  VolumeFlowPerAreaUnits.cubicMetrePerSecondPerSquareMetre: 1,

  VolumeFlowPerAreaUnits.cubicMetrePerSecondPerAcre: _perAcreToPerSquareMetre,
  VolumeFlowPerAreaUnits.cubicMetrePerSecondPerHectare:
      _perHectareToPerSquareMetre,
  VolumeFlowPerAreaUnits.cubicMetrePerSecondPerSquareMile:
      _perSquareMileToPerSquareMetre,
  VolumeFlowPerAreaUnits.cubicMetrePerSecondPerSquareYard:
      _perSquareYardToPerSquareMetre,
  VolumeFlowPerAreaUnits.gallonPerMinutePerAcre: _gallonUSLiquidToCubicMetre *
      _perMinuteToPerSecond *
      _perAcreToPerSquareMetre,
  VolumeFlowPerAreaUnits.gallonPerMinutePerHectare:
      _gallonUSLiquidToCubicMetre *
          _perMinuteToPerSecond *
          _perHectareToPerSquareMetre,
  VolumeFlowPerAreaUnits.gallonPerMinutePerSquareMetre:
      _gallonUSLiquidToCubicMetre * _perMinuteToPerSecond,
  VolumeFlowPerAreaUnits.gallonPerMinutePerSquareMile:
      _gallonUSLiquidToCubicMetre *
          _perMinuteToPerSecond *
          _perSquareMileToPerSquareMetre,
  VolumeFlowPerAreaUnits.gallonPerMinutePerSquareYard:
      _gallonUSLiquidToCubicMetre *
          _perMinuteToPerSecond *
          _perSquareYardToPerSquareMetre,
  VolumeFlowPerAreaUnits.litrePerMinutePerAcre:
      _litreToCubicMetre * _perMinuteToPerSecond * _perAcreToPerSquareMetre,
  VolumeFlowPerAreaUnits.litrePerMinutePerHectare:
      _litreToCubicMetre * _perMinuteToPerSecond * _perHectareToPerSquareMetre,
  VolumeFlowPerAreaUnits.litrePerMinutePerSquareMetre:
      _litreToCubicMetre * _perMinuteToPerSecond,
  VolumeFlowPerAreaUnits.litrePerMinutePerSquareMile: _litreToCubicMetre *
      _perMinuteToPerSecond *
      _perSquareMileToPerSquareMetre,
  VolumeFlowPerAreaUnits.litrePerMinutePerSquareYard: _litreToCubicMetre *
      _perMinuteToPerSecond *
      _perSquareYardToPerSquareMetre,
};
