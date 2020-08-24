import 'dart:math' show pi;

import '../../enums/plane_angle_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';

const _degreeToRadian = 2 * pi / 360;

/// Plane angle unit details
final planeAngleUnitDetails = {
  createUnit(
    'degree',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
      ],
    ),
    PlaneAngleUnit.degree,
    conversionFactor: _degreeToRadian,
  ),
  createUnit(
    'gradian',
    createSymbol(
      const [
        SymbolPart.lG,
        SymbolPart.lR,
        SymbolPart.lA,
        SymbolPart.lD,
      ],
    ),
    PlaneAngleUnit.gradian,
    conversionFactor: 2 * pi / 400,
  ),
  createUnit(
    'milliradian',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.radian,
      ],
    ),
    PlaneAngleUnit.milliRadian,
    conversionFactor: .001,
  ),
  createUnit(
    'minute of arc',
    createSymbol(
      const [
        SymbolPart.singleQuote,
      ],
    ),
    PlaneAngleUnit.minuteOfArc,
    conversionFactor: _degreeToRadian / 60,
  ),
  createUnit(
    'radian',
    createSymbol(
      const [
        SymbolPart.radian,
      ],
    ),
    PlaneAngleUnit.radian,
    conversionFactor: 1,
  ),
  createUnit(
    'second of arc',
    createSymbol(
      const [
        SymbolPart.doubleQuote,
      ],
    ),
    PlaneAngleUnit.secondOfArc,
    conversionFactor: _degreeToRadian / 3600,
  ),
  createUnit(
    'turn',
    createSymbol(
      const [
        SymbolPart.tau,
      ],
    ),
    PlaneAngleUnit.turn,
    conversionFactor: 2 * pi,
  ),
};
