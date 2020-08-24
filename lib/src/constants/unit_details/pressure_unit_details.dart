import '../../enums/area_unit.dart';
import '../../enums/converter.dart';
import '../../enums/force_unit.dart';
import '../../enums/length_unit.dart';
import '../../enums/pressure_unit.dart';
import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const _metreOfMercuryToPascal_conventional = 133322.387415;
const _metreOfWaterToPascal_degree4C = 9806.3754138;

final _ounceForceToNewton =
    conversionFactor(Converter.force, ForceUnit.ounceForce);
final _poundForceToNewton =
    conversionFactor(Converter.force, ForceUnit.poundForce);
final _poundalToNewton = conversionFactor(Converter.force, ForceUnit.poundal);
final _squareInchToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareInch);
final _squareFootToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareFoot);
final _squareYardToSquareMetre =
    conversionFactor(Converter.area, AreaUnit.squareYard);
final _footToMetre = conversionFactor(Converter.length, LengthUnit.foot);
final _inchToMetre = conversionFactor(Converter.length, LengthUnit.inch);

/// gram force per square __metre variations
final _intermediateGramForcePerSquareMetreVariations = createUnitVariation(
  PressureUnit.values,
  'gramForcePerSquare${variationUnitNameSeperator}Metre',
  conversionFactor(Converter.force, ForceUnit.gramForce),
  decimalPrefixes,
  namePrefix: 'gram-force per square ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.gram,
      SymbolPart.force,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'gram-force per square ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -2,
);

/// __bar variations
final _barVariations = createUnitVariation(
  PressureUnit.values,
  '${variationUnitNameSeperator}bar',
  100000,
  decimalPrefixes,
  namePostfix: 'bar',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.lB,
      SymbolPart.lA,
      SymbolPart.lR,
    ],
  ),
);

/// __metre of mercury conventional variations
final _metreOfMercuryVariations_conventional = createUnitVariation(
  PressureUnit.values,
  '${variationUnitNameSeperator}metreOfMercury_conventional',
  _metreOfMercuryToPascal_conventional,
  decimalPrefixes,
  namePostfix: 'metre of mercury',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.lM,
      SymbolPart.clH,
      SymbolPart.lG,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter of mercury',
  system: UnitSystem.conventional,
);

/// __metre of water degree 4C variations
final _metreOfWaterVariations_degree4C = createUnitVariation(
  PressureUnit.values,
  '${variationUnitNameSeperator}metreOfWater_degree4C',
  _metreOfWaterToPascal_degree4C,
  decimalPrefixes,
  namePostfix: 'metre of water',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.lM,
      SymbolPart.clH,
      SymbolPart.subscriptTwo,
      SymbolPart.clO,
    ],
  ),
  addAmericanName: true,
  americanNamePostfix: 'meter of water',
);

/// newton per square __metre variations
final _intermediateNewtonPerSquareMetreVariations = createUnitVariation(
  PressureUnit.values,
  'newtonPerSquare${variationUnitNameSeperator}Metre',
  1,
  decimalPrefixes,
  namePrefix: 'newton per square ',
  namePostfix: 'metre',
  symbolPrefix: createSymbol(
    const [
      SymbolPart.newton,
      SymbolPart.force,
      SymbolPart.forwardSlash,
    ],
  ),
  symbolPostfix: createSymbol(
    const [
      SymbolPart.metre,
    ],
  ),
  addAmericanName: true,
  americanNamePrefix: 'newton per square ',
  americanNamePostfix: 'meter',
  powerOfVariationConversionFactor: -2,
);

/// __gram force per square __metre variations
final _gramForcePerSquareMetreAndNewtonPerSquareMetreVariations = {
  for (var unit in _intermediateGramForcePerSquareMetreVariations)
    ...create(unit, PressureUnit.values),
  for (var unit in _intermediateNewtonPerSquareMetreVariations)
    ...create(unit, PressureUnit.values)
};

/// __pascal variations
final _pascalVariations = createUnitVariation(
  PressureUnit.values,
  '${variationUnitNameSeperator}pascal',
  1,
  decimalPrefixes,
  namePostfix: 'pascal',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.pascal,
    ],
  ),
);

/// __torr variations
final _torrVariations = createUnitVariation(
  PressureUnit.values,
  '${variationUnitNameSeperator}torr',
  133.322368421053,
  decimalPrefixes,
  namePostfix: 'torr',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.clT,
      SymbolPart.lO,
      SymbolPart.lR,
      SymbolPart.lR,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'atmosphere',
    createSymbol(
      const [
        SymbolPart.lA,
        SymbolPart.lT,
        SymbolPart.lM,
      ],
    ),
    PressureUnit.atmosphere_standard,
    conversionFactor: 101325,
    system: unitSystem[UnitSystem.standard],
  ),
  createUnit(
    'atmosphere',
    createSymbol(
      const [
        SymbolPart.lA,
        SymbolPart.lT,
      ],
    ),
    PressureUnit.atmosphere_technical,
    conversionFactor: 98066.5,
    system: unitSystem[UnitSystem.technical],
  ),
  createUnit(
    'barye',
    createSymbol(
      const [
        SymbolPart.clB,
        SymbolPart.lA,
      ],
    ),
    PressureUnit.barye,
    conversionFactor: 0.1,
  ),
  createUnit(
    'foot of mercury',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.clH,
        SymbolPart.lG,
      ],
    ),
    PressureUnit.footOfMercury_conventional,
    conversionFactor: _metreOfMercuryToPascal_conventional * _footToMetre,
  ),
  createUnit(
    'foot of water',
    createSymbol(
      const [
        SymbolPart.foot,
        SymbolPart.clH,
        SymbolPart.subscriptTwo,
        SymbolPart.clO,
      ],
    ),
    PressureUnit.footOfWater_degree4C,
    conversionFactor: _metreOfWaterToPascal_degree4C * _footToMetre,
  ),
  createUnit(
    'inch of mercury',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.clH,
        SymbolPart.lG,
      ],
    ),
    PressureUnit.inchOfMercury_conventional,
    conversionFactor: _metreOfMercuryToPascal_conventional * _inchToMetre,
  ),
  createUnit(
    'inch of water',
    createSymbol(
      const [
        SymbolPart.inch,
        SymbolPart.clH,
        SymbolPart.subscriptTwo,
        SymbolPart.clO,
      ],
    ),
    PressureUnit.inchOfWater_degree4C,
    conversionFactor: _metreOfWaterToPascal_degree4C * _inchToMetre,
  ),
  createUnit(
    'kip per square inch',
    createSymbol(
      const [
        SymbolPart.lK,
        SymbolPart.lI,
        SymbolPart.lP,
      ],
    ),
    PressureUnit.kipPerSquareInch,
    conversionFactor: conversionFactor(Converter.force, ForceUnit.kip) /
        _squareInchToSquareMetre,
  ),
  createUnit(
    'ounce force per square foot',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.ounceForcePerSquareFoot,
    conversionFactor: _ounceForceToNewton / _squareFootToSquareMetre,
  ),
  createUnit(
    'ounce force per square inch',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.ounceForcePerSquareInch,
    conversionFactor: _ounceForceToNewton / _squareInchToSquareMetre,
  ),
  createUnit(
    'ounce force per square yard',
    createSymbol(
      const [
        SymbolPart.ounce,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.ounceForcePerSquareYard,
    conversionFactor: _ounceForceToNewton / _squareYardToSquareMetre,
  ),
  createUnit(
    'pound force per acre',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.acre,
      ],
    ),
    PressureUnit.poundForcePerAcre,
    conversionFactor:
        _poundForceToNewton / conversionFactor(Converter.area, AreaUnit.acre),
  ),
  createUnit(
    'pound force per square foot',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.poundForcePerSquareFoot,
    conversionFactor: _poundForceToNewton / _squareFootToSquareMetre,
  ),
  createUnit(
    'pound force per square inch',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.poundForcePerSquareInch,
    conversionFactor: _poundForceToNewton / _squareInchToSquareMetre,
  ),
  createUnit(
    'pound force per square yard',
    createSymbol(
      const [
        SymbolPart.pound,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.yard,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.poundForcePerSquareYard,
    conversionFactor: _poundForceToNewton / _squareYardToSquareMetre,
  ),
  createUnit(
    'poundal per square foot',
    createSymbol(
      const [
        SymbolPart.poundal,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.foot,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.poundalPerSquareFoot,
    conversionFactor: _poundalToNewton / _squareFootToSquareMetre,
  ),
  createUnit(
    'poundal per square inch',
    createSymbol(
      const [
        SymbolPart.poundal,
        SymbolPart.force,
        SymbolPart.forwardSlash,
        SymbolPart.inch,
        SymbolPart.subscriptTwo,
      ],
    ),
    PressureUnit.poundalPerSquareInch,
    conversionFactor: _poundalToNewton / _squareInchToSquareMetre,
  ),
};

/// Pressure unit details
final pressureUnitDetails = {
  ..._gramForcePerSquareMetreAndNewtonPerSquareMetreVariations,
  ..._barVariations,
  ..._metreOfMercuryVariations_conventional,
  ..._metreOfWaterVariations_degree4C,
  ..._pascalVariations,
  ..._torrVariations,
  ..._otherUnits,
};
