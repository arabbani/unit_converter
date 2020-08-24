import '../../enums/sound_unit.dart';
import '../../enums/symbol_part.dart';
import '../../misc/global.dart';

/// Sound unit details
final soundUnitDetails = {
  createUnit(
    'bel',
    createSymbol(
      const [
        SymbolPart.clB,
      ],
    ),
    SoundUnit.bel,
  ),
  createUnit(
    'decibel',
    createSymbol(
      const [
        SymbolPart.deci,
        SymbolPart.clB,
      ],
    ),
    SoundUnit.deciBel,
  ),
  createUnit(
    'neper',
    createSymbol(
      const [
        SymbolPart.clN,
        SymbolPart.lP,
      ],
    ),
    SoundUnit.neper,
  ),
};
