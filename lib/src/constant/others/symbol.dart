import '../../enum/symbol_parts.dart';
import 'unicode_constants.dart';

// Convert the [charCode] to String and append [postfix] to it, and returns the result
String _createStringFromUnicode(String charCode) {
  return String.fromCharCodes(Runes('\\u{$charCode}'));
}

final Map<SymbolParts, String> symbol = {
  SymbolParts.ab: 'ab',
  SymbolParts.acre: 'ac',
  SymbolParts.ampere: 'A',
  SymbolParts.angstrom: _createStringFromUnicode(unicodeAngstrom),
  SymbolParts.are: 'a',
  SymbolParts.astronomicalUnit: 'au',
  SymbolParts.atto: 'a',
  SymbolParts.barleycorn: 'bc',
  SymbolParts.barn: 'b',
  SymbolParts.becquerel: 'Bq',
  SymbolParts.bit: 'bit',
  SymbolParts.boardFoot: 'FBM',
  SymbolParts.bushel: 'bu',
  SymbolParts.byte: 'B',
  SymbolParts.candela: 'cd',
  SymbolParts.carat: 'ct',
  SymbolParts.centi: 'c',
  SymbolParts.century: 'c',
  SymbolParts.chain: 'chain',
  SymbolParts.chineseMile: 'li',
  SymbolParts.circularMil: 'circular mil',
  SymbolParts.clA: 'A',
  SymbolParts.clB: 'B',
  SymbolParts.clC: 'C',
  SymbolParts.clD: 'D',
  SymbolParts.clE: 'E',
  SymbolParts.clF: 'F',
  SymbolParts.clG: 'G',
  SymbolParts.clH: 'H',
  SymbolParts.clI: 'I',
  SymbolParts.clJ: 'J',
  SymbolParts.clK: 'K',
  SymbolParts.clL: 'L',
  SymbolParts.clM: 'M',
  SymbolParts.clN: 'N',
  SymbolParts.clO: 'O',
  SymbolParts.clP: 'P',
  SymbolParts.clQ: 'Q',
  SymbolParts.clR: 'R',
  SymbolParts.clS: 'S',
  SymbolParts.clT: 'T',
  SymbolParts.clU: 'U',
  SymbolParts.clV: 'V',
  SymbolParts.clW: 'W',
  SymbolParts.clX: 'X',
  SymbolParts.clY: 'Y',
  SymbolParts.clZ: 'Z',
  SymbolParts.clark: 'Clark',
  SymbolParts.coulomb: 'C',
  SymbolParts.curie: 'Ci',
  SymbolParts.day: 'd',
  SymbolParts.deca: 'da',
  SymbolParts.decade: 'decade',
  SymbolParts.deci: 'd',
  SymbolParts.dram: 'dr',
  SymbolParts.dyne: 'dyn',
  SymbolParts.exa: 'E',
  SymbolParts.farad: 'F',
  SymbolParts.fathom: 'ftm',
  SymbolParts.femto: 'f',
  SymbolParts.fermi: 'fm',
  SymbolParts.firlot: 'firlot',
  SymbolParts.fluid: 'fl',
  SymbolParts.foot: 'ft',
  SymbolParts.force: 'f',
  SymbolParts.fortnight: '4tnite',
  SymbolParts.forwardSlash: '/',
  SymbolParts.furlong: 'fur',
  SymbolParts.gal: 'Gal',
  SymbolParts.gallon: 'gal',
  SymbolParts.gauss: 'G',
  SymbolParts.giga: 'G',
  SymbolParts.gill: 'gi',
  SymbolParts.grain: 'gr',
  SymbolParts.gram: 'g',
  SymbolParts.gravity: 'g',
  SymbolParts.hand: 'hh',
  SymbolParts.hardness: 'H',
  SymbolParts.hectare: 'ha',
  SymbolParts.hecto: 'h',
  SymbolParts.henry: 'H',
  SymbolParts.hertz: 'Hz',
  SymbolParts.hour: 'hr',
  SymbolParts.hundredWeight: 'cwt',
  SymbolParts.inch: 'in',
  SymbolParts.kilo: 'k',
  SymbolParts.kip: 'kip',
  SymbolParts.knot: 'kn',
  SymbolParts.lA: 'a',
  SymbolParts.lB: 'b',
  SymbolParts.lC: 'c',
  SymbolParts.lD: 'd',
  SymbolParts.lE: 'e',
  SymbolParts.lF: 'f',
  SymbolParts.lG: 'g',
  SymbolParts.lH: 'h',
  SymbolParts.lI: 'i',
  SymbolParts.lJ: 'j',
  SymbolParts.lK: 'k',
  SymbolParts.lL: 'l',
  SymbolParts.lM: 'm',
  SymbolParts.lN: 'n',
  SymbolParts.lO: 'o',
  SymbolParts.lP: 'p',
  SymbolParts.lQ: 'q',
  SymbolParts.lR: 'r',
  SymbolParts.lS: 's',
  SymbolParts.lT: 't',
  SymbolParts.lU: 'u',
  SymbolParts.lV: 'v',
  SymbolParts.lW: 'w',
  SymbolParts.lX: 'x',
  SymbolParts.lY: 'y',
  SymbolParts.lZ: 'z',
  SymbolParts.lambert: 'L',
  SymbolParts.league: 'lea',
  SymbolParts.lightDay: 'light-day',
  SymbolParts.lightHour: 'light-hour',
  SymbolParts.lightMinute: 'light-minute',
  SymbolParts.lightSecond: 'light-second',
  SymbolParts.lightYear: 'ly',
  SymbolParts.link: 'li',
  SymbolParts.litre: 'L',
  SymbolParts.long: 'long',
  SymbolParts.lumen: 'lm',
  SymbolParts.lux: 'lx',
  SymbolParts.maxwell: 'Mx',
  SymbolParts.mega: 'M',
  SymbolParts.metre: 'm',
  SymbolParts.mho: _createStringFromUnicode(unicodeMho),
  SymbolParts.micro: _createStringFromUnicode(unicodeMicro),
  SymbolParts.mile: 'mi',
  SymbolParts.millennium: 'millennium',
  SymbolParts.milli: 'm',
  SymbolParts.minim: 'min',
  SymbolParts.minute: 'min',
  SymbolParts.mole: 'mol',
  SymbolParts.month: 'mo',
  SymbolParts.nano: 'n',
  SymbolParts.nauticalMile: 'nmi',
  SymbolParts.newton: 'N',
  SymbolParts.nox: 'nx',
  SymbolParts.oersted: 'Oe',
  SymbolParts.ohm: _createStringFromUnicode(unicodeOhm),
  SymbolParts.oilBarrel: 'bbl',
  SymbolParts.ounce: 'oz',
  SymbolParts.parsec: 'pc',
  SymbolParts.pascal: 'Pa',
  SymbolParts.peck: 'peck',
  SymbolParts.pennyWeight: 'dwt',
  SymbolParts.peta: 'P',
  SymbolParts.phot: 'ph',
  SymbolParts.pica: 'pica',
  SymbolParts.pico: 'p',
  SymbolParts.pint: 'pt',
  SymbolParts.planck: '${_createStringFromUnicode(unicodePlanck)}p',
  SymbolParts.point: 'pt',
  SymbolParts.poise: 'P',
  SymbolParts.pole: 'pole',
  SymbolParts.pond: 'p',
  SymbolParts.pood: 'pood',
  SymbolParts.pound: 'lb',
  SymbolParts.poundal: 'pdl',
  SymbolParts.quart: 'qt',
  SymbolParts.radian: 'rad',
  SymbolParts.rai: 'rai',
  SymbolParts.revolution: 'r',
  SymbolParts.rod: 'rd',
  SymbolParts.rood: 'rood',
  SymbolParts.rutherford: 'Rd',
  SymbolParts.second: 's',
  SymbolParts.short: 'sh',
  SymbolParts.siemens: 'S',
  SymbolParts.slug: 'slug',
  SymbolParts.space: ' ',
  SymbolParts.space: ' ',
  SymbolParts.squarePerch: 'square perch',
  SymbolParts.stat: 'stat',
  SymbolParts.stilb: 'sb',
  SymbolParts.stokes: 'St',
  SymbolParts.stone: 'st',
  SymbolParts.subscriptThree: _createStringFromUnicode(unicodeSubscriptThree),
  SymbolParts.subscriptZero: _createStringFromUnicode(unicodeSubscriptZero),
  SymbolParts.superscriptPlus: _createStringFromUnicode(unicodeSuperscriptPlus),
  SymbolParts.superscriptThree:
      _createStringFromUnicode(unicodeSuperscriptThree),
  SymbolParts.superscriptTwo: _createStringFromUnicode(unicodeSuperscriptTwo),
  SymbolParts.superscriptZero: _createStringFromUnicode(unicodeSuperscriptZero),
  SymbolParts.tablespoon: 'tbsp',
  SymbolParts.teaspoon: 'tsp',
  SymbolParts.tera: 'T',
  SymbolParts.tesla: 'T',
  SymbolParts.thousandOfAnInch: 'thou',
  SymbolParts.tonne: 't',
  SymbolParts.troy: 't',
  SymbolParts.volt: 'V',
  SymbolParts.weber: 'Wb',
  SymbolParts.week: 'wk',
  SymbolParts.yard: 'yd',
  SymbolParts.year: 'yr',
  SymbolParts.yocto: 'y',
  SymbolParts.yotta: 'Y',
  SymbolParts.zepto: 'z',
  SymbolParts.zetta: 'Z',
};
