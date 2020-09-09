import 'package:unit_converter/unit_converter.dart';

void main() {
  var areaConverter = getConverter(Converter.area);
  areaConverter.convert(
    value: 2,
    from: AreaUnit.acre,
    to: AreaUnit.squareFoot,
  );
}
