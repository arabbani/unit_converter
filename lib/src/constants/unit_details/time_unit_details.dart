import '../../enums/symbol_part.dart';
import '../../enums/time_unit.dart';
import '../../enums/unit_system.dart';
import '../../misc/global.dart';
import '../others/misc.dart';
import '../others/unit_system.dart';

const double _dayToSecond = 86400;
const double _yearToSecond = 365.2425 * _dayToSecond;

/// __second variations
final _secondVariations = createUnitVariation(
  TimeUnit.values,
  '${variationUnitNameSeperator}second',
  1,
  decimalPrefixes,
  namePostfix: 'second',
  symbolPostfix: createSymbol(
    const [
      SymbolPart.second,
    ],
  ),
);

/// other units
final _otherUnits = {
  createUnit(
    'century',
    createSymbol(
      const [
        SymbolPart.century,
      ],
    ),
    TimeUnit.century,
    conversionFactor: 100 * _yearToSecond,
    system: unitSystem[UnitSystem.gregorian],
  ),
  createUnit(
    'day',
    createSymbol(
      const [
        SymbolPart.day,
      ],
    ),
    TimeUnit.day,
    conversionFactor: _dayToSecond,
  ),
  createUnit(
    'decade',
    createSymbol(
      const [
        SymbolPart.decade,
      ],
    ),
    TimeUnit.decade,
    conversionFactor: 10 * _yearToSecond,
    system: unitSystem[UnitSystem.gregorian],
  ),
  createUnit(
    'fortnight',
    createSymbol(
      const [
        SymbolPart.fortnight,
      ],
    ),
    TimeUnit.fortnight,
    conversionFactor: 1209600,
  ),
  createUnit(
    'hour',
    createSymbol(
      const [
        SymbolPart.hour,
      ],
    ),
    TimeUnit.hour,
    conversionFactor: 3600,
  ),
  createUnit(
    'millennium',
    createSymbol(
      const [
        SymbolPart.millennium,
      ],
    ),
    TimeUnit.millennium,
    conversionFactor: 1000 * _yearToSecond,
    system: unitSystem[UnitSystem.gregorian],
  ),
  createUnit(
    'minute',
    createSymbol(
      const [
        SymbolPart.minute,
      ],
    ),
    TimeUnit.minute,
    conversionFactor: 60,
  ),
  createUnit(
    'month',
    createSymbol(
      const [
        SymbolPart.month,
      ],
    ),
    TimeUnit.month,
    conversionFactor: _yearToSecond / 12,
    system: unitSystem[UnitSystem.gregorian],
  ),
  createUnit(
    'week',
    createSymbol(
      const [
        SymbolPart.week,
      ],
    ),
    TimeUnit.week,
    conversionFactor: 604800,
  ),
  createUnit(
    'year',
    createSymbol(
      const [
        SymbolPart.year,
      ],
    ),
    TimeUnit.year,
    conversionFactor: _yearToSecond,
    system: unitSystem[UnitSystem.gregorian],
  ),
};

/// Time unit details
final timeUnitDetails = {
  ..._secondVariations,
  ..._otherUnits,
};
