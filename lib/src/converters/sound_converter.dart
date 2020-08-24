import '../enums/sound_unit.dart';

/// Converter for sound.
class SoundConverter {
  /// Returns the result after converting the `value` from type `from` to type `to`.
  ///
  /// If `from` and `to` are the same, returns the `value` itself.
  double convert(double value, SoundUnit from, SoundUnit to) {
    value = _convertToDecibel(from, value);
    value = _convertFromDecibel(to, value);
    return value;
  }

  /// Convert other unit to Decibel.
  double _convertToDecibel(SoundUnit from, double value) {
    switch (from) {
      case SoundUnit.deciBel:
        return value;
      case SoundUnit.bel:
        return value * 0.1;
      case SoundUnit.neper:
        return 8.68588963807 * value;
    }
    return value;
  }

  /// Convert Decibel to other units.
  double _convertFromDecibel(SoundUnit to, double value) {
    switch (to) {
      case SoundUnit.deciBel:
        return value;
      case SoundUnit.bel:
        return 10 * value;
      case SoundUnit.neper:
        return 0.1151292546496365 * value;
    }
    return value;
  }
}
