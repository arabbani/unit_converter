import 'dart:math' show pow;

import '../../enums/length_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const _inchToMetre = 0.0254;
const _footToMetre = 12 * _inchToMetre;
const _mileToMetre = 5280 * _footToMetre;
const double _nauticalMileToMetre = 1852;

/// __light year variations
final _lightYearVariations = createUnitVariation(
  LengthUnit.values,
  '${variationUnitNameSeperator}lightYear',
  9.4607304725808 * pow(10, 15),
  decimalPrefixes,
  namePostfix: 'light-year',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.lightYear,
    ],
  ),
  system: UnitSystem.julian,
);

/// __metre variations
final _metreVariations = createUnitVariation(
  LengthUnit.values,
  '${variationUnitNameSeperator}metre',
  1,
  decimalPrefixes,
  namePostfix: 'metre',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter',
);

/// __parsec variations
final _parsecVariations = createUnitVariation(
  LengthUnit.values,
  '${variationUnitNameSeperator}parsec',
  3.08567782 * pow(10, 16),
  decimalPrefixes,
  namePostfix: 'parsec',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.parsec,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'angstrom',
    createSymbol(
      const [
        SymbolPart.angstrom,
      ],
    ),
    LengthUnit.angstrom,
    conversionFactor: pow(10, -10),
  ),
  createUnit(
    'astronomical unit',
    createSymbol(
      const [
        SymbolPart.astronomicalUnit,
      ],
    ),
    LengthUnit.astronomicalUnit,
    conversionFactor: 149597870700,
  ),
  createUnit(
    'barleycorn',
    createSymbol(
      const [
        SymbolPart.barleycorn,
      ],
    ),
    LengthUnit.barleycorn,
    conversionFactor: 0.00846667,
  ),
  createUnit(
    'chain',
    createSymbol(
      const [
        SymbolPart.chain,
      ],
    ),
    LengthUnit.chain,
    conversionFactor: 20.1168,
    system: unitSystem[UnitSystem.gunter],
  ),
  createUnit(
    'chinese mile',
    createSymbol(
      const [
        SymbolPart.chineseMile,
      ],
    ),
    LengthUnit.chineseMile,
    conversionFactor: 500,
  ),
  createUnit(
    'fathom',
    createSymbol(
      const [
        SymbolPart.fathom,
      ],
    ),
    LengthUnit.fathom,
    conversionFactor: 6 * _footToMetre,
  ),
  createUnit(
    'fermi',
    createSymbol(
      const [
        SymbolPart.fermi,
      ],
    ),
    LengthUnit.fermi,
    conversionFactor: pow(10, -15),
  ),
  createUnit(
    'foot',
    createSymbol(
      const [
        SymbolPart.foot,
      ],
    ),
    LengthUnit.foot,
    conversionFactor: _footToMetre,
  ),
  createUnit(
    'foot',
    createSymbol(
      const [
        SymbolPart.foot,
      ],
    ),
    LengthUnit.foot_usSurvey,
    conversionFactor: 1200 / 3937,
    system: unitSystem[UnitSystem.usSurvey],
  ),
  createUnit(
    'furlong',
    createSymbol(
      const [
        SymbolPart.furlong,
      ],
    ),
    LengthUnit.furlong,
    conversionFactor: _mileToMetre / 8,
  ),
  createUnit(
    'hand',
    createSymbol(
      const [
        SymbolPart.hand,
      ],
    ),
    LengthUnit.hand,
    conversionFactor: 4 * _inchToMetre,
  ),
  createUnit(
    'inch',
    createSymbol(
      const [
        SymbolPart.inch,
      ],
    ),
    LengthUnit.inch,
    conversionFactor: _inchToMetre,
  ),
  createUnit(
    'league',
    createSymbol(
      const [
        SymbolPart.league,
      ],
    ),
    LengthUnit.league,
    conversionFactor: 3 * _mileToMetre,
    system: unitSystem[UnitSystem.land],
  ),
  createUnit(
    'light-day',
    createSymbol(
      const [
        SymbolPart.lightDay,
      ],
    ),
    LengthUnit.lightDay,
    conversionFactor: 2.59020683712 * pow(10, 13),
  ),
  createUnit(
    'light-hour',
    createSymbol(
      const [
        SymbolPart.lightHour,
      ],
    ),
    LengthUnit.lightHour,
    conversionFactor: 1.0792528488 * pow(10, 12),
  ),
  createUnit(
    'light-minute',
    createSymbol(
      const [
        SymbolPart.lightMinute,
      ],
    ),
    LengthUnit.lightMinute,
    conversionFactor: 1.798754748 * pow(10, 10),
  ),
  createUnit(
    'light-second',
    createSymbol(
      const [
        SymbolPart.lightSecond,
      ],
    ),
    LengthUnit.lightSecond,
    conversionFactor: 299792458,
  ),
  createUnit(
    'link',
    createSymbol(
      const [
        SymbolPart.link,
      ],
    ),
    LengthUnit.link,
    conversionFactor: (66 * _footToMetre) / 100,
    system: unitSystem[UnitSystem.gunter],
  ),
  createUnit(
    'microinch',
    createSymbol(
      const [
        SymbolPart.micro,
        SymbolPart.inch,
      ],
    ),
    LengthUnit.microInch,
    conversionFactor: _inchToMetre * pow(10, -6),
  ),
  createUnit(
    'micron',
    createSymbol(
      const [
        SymbolPart.micro,
      ],
    ),
    LengthUnit.micron,
    conversionFactor: pow(10, -6),
  ),
  createUnit(
    'mile',
    createSymbol(
      const [
        SymbolPart.mile,
      ],
    ),
    LengthUnit.mile,
    conversionFactor: _mileToMetre,
  ),
  createUnit(
    'nautical league',
    createSymbol(
      const [
        SymbolPart.lN,
        SymbolPart.lL,
      ],
    ),
    LengthUnit.nauticalLeague,
    conversionFactor: 3 * _nauticalMileToMetre,
  ),
  createUnit(
    'nautical mile',
    createSymbol(
      const [
        SymbolPart.nauticalMile,
      ],
    ),
    LengthUnit.nauticalMile,
    conversionFactor: _nauticalMileToMetre,
  ),
  createUnit(
    'pica',
    createSymbol(
      const [
        SymbolPart.pica,
      ],
    ),
    LengthUnit.pica,
    conversionFactor: _inchToMetre / 6,
    system: unitSystem[UnitSystem.typographic],
  ),
  createUnit(
    'planck length',
    createSymbol(
      const [
        SymbolPart.planck,
      ],
    ),
    LengthUnit.planckLength,
    conversionFactor: 1.616255 * pow(10, -35),
  ),
  createUnit(
    'point',
    createSymbol(
      const [
        SymbolPart.point,
      ],
    ),
    LengthUnit.point,
    conversionFactor: _inchToMetre / 72,
    system: unitSystem[UnitSystem.typographic],
  ),
  createUnit(
    'pole',
    createSymbol(
      const [
        SymbolPart.pole,
      ],
    ),
    LengthUnit.pole,
    conversionFactor: 16.5 * _footToMetre,
  ),
  createUnit(
    'rod',
    createSymbol(
      const [
        SymbolPart.rod,
      ],
    ),
    LengthUnit.rod,
    conversionFactor: 16.5 * _footToMetre,
  ),
  createUnit(
    'thousand of an inch',
    createSymbol(
      const [
        SymbolPart.thousandOfAnInch,
      ],
    ),
    LengthUnit.thousandOfAnInch,
    conversionFactor: _inchToMetre / 1000,
  ),
  createUnit(
    'yard',
    createSymbol(
      const [
        SymbolPart.yard,
      ],
    ),
    LengthUnit.yard,
    conversionFactor: 3 * _footToMetre,
  ),
};

/// Length unit details
final lengthUnitDetails = {
  ..._lightYearVariations,
  ..._metreVariations,
  ..._parsecVariations,
  ..._otherUnits,
};
