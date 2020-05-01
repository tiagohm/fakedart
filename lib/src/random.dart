import 'dart:math' as math;

import 'package:fakedart/src/constants.dart';
import 'package:fakedart/src/faker.dart';

class Random {
  final Faker faker;
  final math.Random _random;
  List<String Function()> _wordMethods;

  Random(this.faker, math.Random random) : _random = random;

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
    bool upper,
  }) {
    final provider = upper == null
        ? list(const [alphaUppercaseChars, alphaChars])
        : (upper ? alphaUppercaseChars : alphaChars);
    return count(provider, n);
  }

  String word() {
    _wordMethods ??= [
      faker.commerce.product,
      faker.commerce.department,
      faker.commerce.productName,
      faker.commerce.productMaterial,
      faker.commerce.productAdjective,
      faker.commerce.color,
      faker.company.catchPhraseAdjective,
      faker.company.catchPhraseDescriptor,
      faker.company.catchPhraseNoun,
      faker.company.bsAdjective,
      faker.company.bsBuzz,
      faker.company.bsNoun,
      faker.address.streetSuffix,
      faker.address.county,
      faker.address.country,
      faker.address.state,
      faker.finance.accountName,
      faker.finance.transactionType,
      faker.finance.currencyName,
      faker.hacker.noun,
      faker.hacker.verb,
      faker.hacker.adjective,
      faker.hacker.ingVerb,
      faker.hacker.abbreviation,
      faker.name.jobDescriptor,
      faker.name.jobArea,
      faker.name.jobType,
    ];

    return list(_wordMethods)();
  }

  String words({int count}) {
    return List.generate(count ?? nextInt(4, 1), (i) => word()).join(' ');
  }
}
