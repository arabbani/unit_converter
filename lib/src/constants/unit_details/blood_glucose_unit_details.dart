import '../../enums/blood_glucose_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';

/// Blood gucose unit details
final bloodGlucoseUnitDetails = {
  createUnit(
    'milligram per decilitre',
    createSymbol(
      const [
        SymbolPart.milli,
        SymbolPart.gram,
        SymbolPart.forwardSlash,
        SymbolPart.deci,
        SymbolPart.litre,
      ],
    ),
    BloodGlucoseUnit.milliGramPerDeciLitre,
    conversionFactor: 1,
    americanName: 'milligram per deciliter',
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
    BloodGlucoseUnit.milliMolePerLitre,
    conversionFactor: 18.01559,
    americanName: 'millimole per liter',
  ),
};
