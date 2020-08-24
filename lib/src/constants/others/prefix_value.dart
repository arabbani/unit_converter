import '../../enums/metric_prefix.dart';
import '../../models/prefix.dart';

/// Metric prefix values
final Map<MetricPrefix, Prefix> prefixValue = {
  MetricPrefix.atto: const Prefix(10, -18),
  MetricPrefix.binaryExa: const Prefix(2, 60),
  MetricPrefix.binaryGiga: const Prefix(2, 30),
  MetricPrefix.binaryKilo: const Prefix(2, 10),
  MetricPrefix.binaryMega: const Prefix(2, 20),
  MetricPrefix.binaryPeta: const Prefix(2, 50),
  MetricPrefix.binaryTera: const Prefix(2, 40),
  MetricPrefix.binaryYotta: const Prefix(2, 80),
  MetricPrefix.binaryZetta: const Prefix(2, 70),
  MetricPrefix.centi: const Prefix(10, -2),
  MetricPrefix.deca: const Prefix(10, 1),
  MetricPrefix.deci: const Prefix(10, -1),
  MetricPrefix.exa: const Prefix(10, 18),
  MetricPrefix.femto: const Prefix(10, -15),
  MetricPrefix.giga: const Prefix(10, 9),
  MetricPrefix.hecto: const Prefix(10, 2),
  MetricPrefix.kilo: const Prefix(10, 3),
  MetricPrefix.mega: const Prefix(10, 6),
  MetricPrefix.micro: const Prefix(10, -6),
  MetricPrefix.milli: const Prefix(10, -3),
  MetricPrefix.nano: const Prefix(10, -9),
  MetricPrefix.peta: const Prefix(10, 15),
  MetricPrefix.pico: const Prefix(10, -12),
  MetricPrefix.tera: const Prefix(10, 12),
  MetricPrefix.yocto: const Prefix(10, -24),
  MetricPrefix.yotta: const Prefix(10, 24),
  MetricPrefix.zepto: const Prefix(10, -21),
  MetricPrefix.zetta: const Prefix(10, 21),
};
