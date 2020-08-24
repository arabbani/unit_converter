import '../../enums/symbol_part.dart';
import '../../enums/unit_system.dart';
import '../../enums/water_hardness_unit.dart';
import '../../misc/global.dart';
import '../others/unit_system.dart';

/// Water hardnes unit details
final waterHardnessUnitDetails = {
  createUnit(
    'clark degree',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.clark,
      ],
    ),
    WaterHardnessUnit.clarkDegree,
    conversionFactor: 0.142413917539,
  ),
  createUnit(
    'degree of general hardness',
    createSymbol(
      const [
        SymbolPart.lD,
        SymbolPart.lG,
        SymbolPart.hardness,
      ],
    ),
    WaterHardnessUnit.degreeOfGeneralHardness,
    conversionFactor: 0.178324958004,
  ),
  createUnit(
    'english degree',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.lE,
      ],
    ),
    WaterHardnessUnit.englishDegree,
    conversionFactor: 0.142413917539,
  ),
  createUnit(
    'french degree',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.lF,
        SymbolPart.hardness,
      ],
    ),
    WaterHardnessUnit.frenchDegree,
    conversionFactor: 0.0999131754505,
  ),
  createUnit(
    'german degree',
    createSymbol(
      const [
        SymbolPart.superscriptZero,
        SymbolPart.lD,
        SymbolPart.hardness,
      ],
    ),
    WaterHardnessUnit.germanDegree,
    conversionFactor: 0.178324958004,
  ),
  createUnit(
    'grain per gallon',
    createSymbol(
      const [
        SymbolPart.lG,
        SymbolPart.lP,
        SymbolPart.lG,
      ],
    ),
    WaterHardnessUnit.grainPerGallon,
    conversionFactor: 0.171031983659,
  ),
  createUnit(
    'milliequivalent per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.lE,
        SymbolPart.lQ,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    WaterHardnessUnit.milliEquivalentPerLitre,
    conversionFactor: 0.5,
    americanName: 'milliequivalent per liter',
  ),
  createUnit(
    'milligram per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    WaterHardnessUnit.milliGramPerLitre_Ca2,
    conversionFactor: 0.0249513448775,
    americanName: 'milligram per liter',
    system: unitSystem[UnitSystem.ca2],
  ),
  createUnit(
    'milligram per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    WaterHardnessUnit.milliGramPerLitre_CaCO3,
    conversionFactor: 0.00999131754505,
    americanName: 'milligram per liter',
    system: unitSystem[UnitSystem.caCO3],
  ),
  createUnit(
    'milligram per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    WaterHardnessUnit.milliGramPerLitre_CaO,
    conversionFactor: 0.0178324958004,
    americanName: 'milligram per liter',
    system: unitSystem[UnitSystem.caO],
  ),
  createUnit(
    'milligram per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    WaterHardnessUnit.milliGramPerLitre_Mg2,
    conversionFactor: 0.0411437975725,
    americanName: 'milligram per liter',
    system: unitSystem[UnitSystem.mg2],
  ),
  createUnit(
    'millimole per litre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.mole,
        SymbolPart.forwardSlash,
        SymbolPart.litre,
      ],
    ),
    WaterHardnessUnit.milliMolePerLitre_CaCO3,
    conversionFactor: 1,
    americanName: 'millimole per liter',
    system: unitSystem[UnitSystem.caCO3],
  ),
  createUnit(
    'part per million',
    createSymbol(
      const [
        SymbolPart.lP,
        SymbolPart.lP,
        SymbolPart.lM,
      ],
    ),
    WaterHardnessUnit.partPerMillion_CaCO3,
    conversionFactor: 0.00999131754505,
    system: unitSystem[UnitSystem.caCO3],
  ),
};
