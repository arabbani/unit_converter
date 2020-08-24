import '../enums/temperature_unit.dart';

/// Converter for temperature.
class TemperatureConverter {
  /// Returns the result after converting the `value` from type `from` to type `to`.
  ///
  /// If `from` and `to` are the same, returns the `value` itself.
  double convert(double value, TemperatureUnit from, TemperatureUnit to) {
    value = _convertToKelvin(from, value);
    value = _convertFromKelvin(to, value);
    return value;
  }

  /// Convert other unit to kelvin.
  double _convertToKelvin(TemperatureUnit from, double value) {
    switch (from) {
      case TemperatureUnit.kelvin:
        return value;
      case TemperatureUnit.degreeCelsius:
        return _celsiusToKelvin(value);
      case TemperatureUnit.degreeDelisle:
        return 373.15 - (value * 2 / 3);
      case TemperatureUnit.degreeFahrenheit:
        return _celsiusToKelvin(_fahrenheitToCelsius(value));
      case TemperatureUnit.degreeNewton:
        return _celsiusToKelvin(_newtonToCelsius(value));
      case TemperatureUnit.degreeRankine:
        return value * 5 / 9;
      case TemperatureUnit.degreeReaumur:
        return value * 5 / 4 + 273.15;
      case TemperatureUnit.degreeRomer:
        return (value - 7.5) * 40 / 21 + 273.15;
    }
    return value;
  }

  /// Convert kelvin to other units.
  double _convertFromKelvin(TemperatureUnit to, double value) {
    switch (to) {
      case TemperatureUnit.kelvin:
        return value;
      case TemperatureUnit.degreeCelsius:
        return _celsiusFromKelvin(value);
      case TemperatureUnit.degreeDelisle:
        return (373.15 - value) * 3 / 2;
      case TemperatureUnit.degreeFahrenheit:
        return _fahrenheitFromCelsius(_celsiusFromKelvin(value));
      case TemperatureUnit.degreeNewton:
        return _newtonFromCelsius(_celsiusFromKelvin(value));
      case TemperatureUnit.degreeRankine:
        return value * 9 / 5;
      case TemperatureUnit.degreeReaumur:
        return (value - 273.15) * 4 / 5;
      case TemperatureUnit.degreeRomer:
        return (value - 273.15) * 21 / 40 + 7.5;
    }
    return value;
  }

  /// Convert Celsius to Kelvin.
  double _celsiusToKelvin(double value) {
    return value + 273.15;
  }

  /// Convert Fahrenheit to Celsius.
  double _fahrenheitToCelsius(double value) {
    return (value - 32) * 5 / 9;
  }

  /// Convert Newton to Celsius.
  double _newtonToCelsius(double value) {
    return value / 0.33;
  }

  /// Convert Kelvin to Celsius.
  double _celsiusFromKelvin(double value) {
    return value - 273.15;
  }

  /// Convert Celsius to Fahrenheit.
  double _fahrenheitFromCelsius(double value) {
    return (value * 9 / 5) + 32;
  }

  /// Convert Celsius to Newton.
  double _newtonFromCelsius(double value) {
    return value * 0.33;
  }
}
