import 'dart:math' show pow;

import '../../enum/conversion_type.dart';
import '../../enum/prefix.dart';
import '../../enum/volume_units.dart';
import '../../misc/global.dart';
import '../../unit_converter.dart';
import '../others/prefix_value.dart';

const _litre = 0.001;

final Map<VolumeUnits, double> volumeConversionDetails = {
  // Base unit
  VolumeUnits.cubicMeter: 1,
  VolumeUnits.acreFoot: 1233.48183754752,
  VolumeUnits.acreInch: 102.79015312896,
  VolumeUnits.attoLitre: _litre * prefixValue[Prefix.atto],
  VolumeUnits.boardFoot: 0.002359737216,
  VolumeUnits.bushel_Imperial: 0.03636872,
  VolumeUnits.bushel_USDryLevel: 0.03523907016688,
  VolumeUnits.centiLitre: _litre * prefixValue[Prefix.centi],
  VolumeUnits.cubicAttoMeter: pow(
    prefixValue[Prefix.atto],
    3,
  ),
  VolumeUnits.cubicCentiMeter: pow(
    prefixValue[Prefix.centi],
    3,
  ),
  VolumeUnits.cubicDecaMeter: pow(
    prefixValue[Prefix.deca],
    3,
  ),
  VolumeUnits.cubicDeciMeter: pow(
    prefixValue[Prefix.deci],
    3,
  ),
  VolumeUnits.cubicExaMeter: pow(
    prefixValue[Prefix.exa],
    3,
  ),
  VolumeUnits.cubicFemtoMeter: pow(
    prefixValue[Prefix.femto],
    3,
  ),
  VolumeUnits.cubicFoot: pow(
    getConversionDetail(ConversionType.length, LengthUnits.foot),
    3,
  ),
  VolumeUnits.cubicGigaMeter: pow(
    prefixValue[Prefix.giga],
    3,
  ),
  VolumeUnits.cubicHectoMeter: pow(
    prefixValue[Prefix.hecto],
    3,
  ),
  VolumeUnits.cubicInch: pow(
    getConversionDetail(ConversionType.length, LengthUnits.inch),
    3,
  ),
  VolumeUnits.cubicKiloMeter: pow(
    prefixValue[Prefix.kilo],
    3,
  ),
  VolumeUnits.cubicMegaMeter: pow(
    prefixValue[Prefix.mega],
    3,
  ),
  VolumeUnits.cubicMicroMeter: pow(
    prefixValue[Prefix.micro],
    3,
  ),
  VolumeUnits.cubicMile: pow(
    getConversionDetail(ConversionType.length, LengthUnits.mile),
    3,
  ),
  VolumeUnits.cubicMilliMeter: pow(
    prefixValue[Prefix.milli],
    3,
  ),
  VolumeUnits.cubicNanoMeter: pow(
    prefixValue[Prefix.nano],
    3,
  ),
  VolumeUnits.cubicPetaMeter: pow(
    prefixValue[Prefix.peta],
    3,
  ),
  VolumeUnits.cubicPicoMeter: pow(
    prefixValue[Prefix.pico],
    3,
  ),
  VolumeUnits.cubicTeraMeter: pow(
    prefixValue[Prefix.tera],
    3,
  ),
  VolumeUnits.cubicYard: pow(
    getConversionDetail(ConversionType.length, LengthUnits.yard),
    3,
  ),
  VolumeUnits.cubicYoctoMeter: pow(
    prefixValue[Prefix.yocto],
    3,
  ),
  VolumeUnits.cubicYottaMeter: pow(
    prefixValue[Prefix.yotta],
    3,
  ),
  VolumeUnits.cubicZeptoMeter: pow(
    prefixValue[Prefix.zepto],
    3,
  ),
  VolumeUnits.cubicZettaMeter: pow(
    prefixValue[Prefix.zetta],
    3,
  ),
  VolumeUnits.cup_Imperial: 0.000284130625,
  VolumeUnits.cup_Metric: 0.00025,
  VolumeUnits.cup_US: 0.0002365882365,
  VolumeUnits.cup_USFoodNutrition: 0.00024,
  VolumeUnits.decaLitre: _litre * prefixValue[Prefix.deca],
  VolumeUnits.deciLitre: _litre * prefixValue[Prefix.deci],
  VolumeUnits.exaLitre: _litre * prefixValue[Prefix.exa],
  VolumeUnits.femtoLitre: _litre * prefixValue[Prefix.femto],
  VolumeUnits.firlot_Imperial: 0.03636872,
  VolumeUnits.firlot_USDry: 0.0352390701669,
  VolumeUnits.fluidDram_US: 0.000003696691195313,
  VolumeUnits.fluidOunce_Imperial: 0.0000284130625,
  VolumeUnits.fluidOunce_US: 2.95735295625 * pow(10, -5),
  VolumeUnits.fluidOunce_USFoodNutrition: 0.00003,
  VolumeUnits.gallon_Imperial: 0.00454609,
  VolumeUnits.gallon_USDry: 0.00440488377086,
  VolumeUnits.gallon_USLiquid: 0.003785411784,
  VolumeUnits.gigaLitre: _litre * prefixValue[Prefix.giga],
  VolumeUnits.gill_Imperial: 0.0001420653125,
  VolumeUnits.gill_US: 0.00011829411825,
  VolumeUnits.hectareMeter: 10000,
  VolumeUnits.hectoLitre: _litre * prefixValue[Prefix.hecto],
  VolumeUnits.jigger: 0.0000443602943,
  VolumeUnits.kiloLitre: _litre * prefixValue[Prefix.kilo],
  VolumeUnits.litre: _litre,
  VolumeUnits.megaLitre: _litre * prefixValue[Prefix.mega],
  VolumeUnits.microLitre: _litre * prefixValue[Prefix.micro],
  VolumeUnits.milliLitre: _litre * prefixValue[Prefix.milli],
  VolumeUnits.minim_Imperial: 5.9193880208 * pow(10, -8),
  VolumeUnits.minim_US: 6.1611519922 * pow(10, -8),
  VolumeUnits.nanoLitre: _litre * prefixValue[Prefix.nano],
  VolumeUnits.oilBarrel: 0.158987294928,
  VolumeUnits.peck_Imperial: 0.00909218,
  VolumeUnits.peck_USDry: 0.00880976754172,
  VolumeUnits.petaLitre: _litre * prefixValue[Prefix.peta],
  VolumeUnits.picoLitre: _litre * prefixValue[Prefix.pico],
  VolumeUnits.pint_Imperial: 0.00056826125,
  VolumeUnits.pint_USDry: 0.0005506104713575,
  VolumeUnits.pint_USLiquid: 0.000473176473,
  VolumeUnits.quart_Imperial: 0.0011365225,
  VolumeUnits.quart_USDry: 0.00110122094272,
  VolumeUnits.quart_USLiquid: 0.000946352946,
  VolumeUnits.tablespoon_Australian: 2 * pow(10, -5),
  VolumeUnits.tablespoon_Metric: 1.5 * pow(10, -5),
  VolumeUnits.tablespoon_US: 0.00001478676478,
  VolumeUnits.tablespoon_USFoodNutrition: 1.5 * pow(10, -5),
  VolumeUnits.teaspoon_metric: 5 * pow(10, -6),
  VolumeUnits.teaspoon_US: 0.00000492892159,
  VolumeUnits.teaspoon_USFoodNutrition: 5 * pow(10, -6),
  VolumeUnits.teraLitre: _litre * prefixValue[Prefix.tera],
  VolumeUnits.yoctoLitre: _litre * prefixValue[Prefix.yocto],
  VolumeUnits.yottaLitre: _litre * prefixValue[Prefix.yotta],
  VolumeUnits.zeptoLitre: _litre * prefixValue[Prefix.zepto],
  VolumeUnits.zettaLitre: _litre * prefixValue[Prefix.zetta],
};
