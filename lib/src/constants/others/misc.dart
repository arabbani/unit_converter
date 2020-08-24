import '../../enums/metric_prefix.dart';

const variationUnitNameSeperator = '@';

/// Decimal metric prefixes
const decimalPrefixes = const [
  MetricPrefix.atto,
  MetricPrefix.centi,
  MetricPrefix.deca,
  MetricPrefix.deci,
  MetricPrefix.exa,
  MetricPrefix.femto,
  MetricPrefix.giga,
  MetricPrefix.hecto,
  MetricPrefix.kilo,
  MetricPrefix.mega,
  MetricPrefix.micro,
  MetricPrefix.milli,
  MetricPrefix.nano,
  MetricPrefix.peta,
  MetricPrefix.pico,
  MetricPrefix.tera,
  MetricPrefix.yocto,
  MetricPrefix.yotta,
  MetricPrefix.zepto,
  MetricPrefix.zetta,
];

/// Binary metric prefixes
const binaryPrefixes = const [
  MetricPrefix.binaryExa,
  MetricPrefix.binaryGiga,
  MetricPrefix.binaryKilo,
  MetricPrefix.binaryMega,
  MetricPrefix.binaryPeta,
  MetricPrefix.binaryTera,
  MetricPrefix.binaryYotta,
  MetricPrefix.binaryZetta,
];
