import 'dart:math' as math;

import 'package:fakedart/src/constants.dart';

class Random {
  final math.Random _random;

  Random() : _random = math.Random();

  Random.seed(int seed) : _random = math.Random(seed);

  Random.secure() : _random = math.Random.secure();

  bool nextBool() => _random.nextBool();

  int nextInt(
    // exclusive.
    num max, [
    num min,
  ]) {
    max ??= 32768;
    min ??= 0;

    return (_random.nextDouble() * (max - min) + min).floor();
  }

  double nextNumber({
    double max, // inclusive.
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

    final n = nextInt(max / precision, min / precision);

    // Workaround problem in Float point arithmetics for e.g. 6681493 / 0.01
    return n / (1 / precision);
  }

  String char(String text) {
    if (text == null || text.isEmpty) return null;
    final n = text.length == 1 ? 0 : nextInt(text.length);
    return text[n];
  }

  T list<T>(List<T> list) {
    if (list == null || list.isEmpty) return null;
    final n = list.length == 1 ? 0 : nextInt(list.length);
    return list[n];
  }

  String count(
    provider,
    int n,
  ) {
    if (provider is String) {
      return List.generate(n, (i) => char(provider)).join();
    } else if (provider is List) {
      return List.generate(n, (i) => list(provider)).join();
    } else {
      return null;
    }
  }

  String alphaNumeric(int n) => count(alphaNumericChars, n);

  String alpha(
    int n, {
    bool upcase,
  }) {
    final provider = upcase == null
        ? list(const [alphaUppercaseChars, alphaChars])
        : (upcase ? alphaUppercaseChars : alphaChars);
    return count(provider, n);
  }
}
