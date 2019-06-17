import '../../enum/symbol_parts.dart';
import '../../enum/unit_systems.dart';
import '../../misc/global.dart';
import 'symbol.dart';
import 'unicode_constants.dart';

final Map<UnitSystems, String> unitSystem = {
  UnitSystems.australian: 'Australian',
  UnitSystems.binary: 'Binary',
  UnitSystems.boiler: 'Boiler',
  UnitSystems.ca2: 'Ca${createSymbol(
    const [
      SymbolParts.superscriptTwo,
      SymbolParts.superscriptPlus,
    ],
  )}',
  UnitSystems.caCO3: 'CaCO${createSymbol(
    const [
      SymbolParts.subscriptThree,
    ],
  )}',
  UnitSystems.caO: 'CaO',
  UnitSystems.conventional: 'Conventional',
  UnitSystems.degree15C: '15 ${stringFromUnicode(unicodeSuperscriptZero)}C',
  UnitSystems.degree4: '4 ${stringFromUnicode(unicodeSuperscriptZero)}C',
  UnitSystems.ec: 'EC',
  UnitSystems.electric: 'Electric',
  UnitSystems.gregorian: 'Gregorian',
  UnitSystems.gunter: 'Gunter\'s',
  UnitSystems.imperial: 'Imperial',
  UnitSystems.intlSteamTable: 'IT',
  UnitSystems.julian: 'Julian',
  UnitSystems.land: 'Land',
  UnitSystems.mechanical: 'Mechanical',
  UnitSystems.metric: 'Metric',
  UnitSystems.mg2: 'Mg${createSymbol(
    const [
      SymbolParts.superscriptTwo,
      SymbolParts.superscriptPlus,
    ],
  )}',
  UnitSystems.standard: 'Standard',
  UnitSystems.technical: 'Technical',
  UnitSystems.tnt: 'TNT',
  UnitSystems.typographic: 'Typographic',
  UnitSystems.us: 'US',
  UnitSystems.usDry: 'US dry',
  UnitSystems.usDryLevel: 'US dry level',
  UnitSystems.usFoodNutritionLabel: 'US food nutrition labeling',
  UnitSystems.usLiquid: 'US liquid',
  UnitSystems.usSurvey: 'US Survey',
};
