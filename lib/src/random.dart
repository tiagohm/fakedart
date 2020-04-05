import 'dart:math';

extension RandomExtension on Random {
  int rand(
    // exclusive
    num max, [
    num min,
  ]) {
    max ??= 32768;
    min ??= 0;

    return (nextDouble() * (max - min) + min).floor();
  }

  double number({
    double max, // inclusive
    double min,
    double precision,
  }) {
    min ??= 0;
    max ??= 99999;
    precision ??= 1;

    // Make the range inclusive of the max value.
    if (max >= 0) {
      max += precision;
    }

    final n = rand(max / precision, min / precision);

    // Workaround problem in Float point arithmetics for e.g. 6681493 / 0.01
    return n / (1 / precision);
  }

  String char(String text) {
    if (text == null || text.isEmpty) return null;
    final n = text.length == 1 ? 0 : rand(text.length);
    return text[n];
  }

  T list<T>(List<T> list) {
    if (list == null || list.isEmpty) return null;
    final n = list.length == 1 ? 0 : rand(list.length);
    return list[n];
  }
}
