import 'dart:math';

import 'package:fakedart/src/faker.dart';
import 'package:fakedart/src/random.dart';

class Commerce {
  final Faker faker;

  Commerce(this.faker);

  String color() {
    return faker.random.list(faker.definitions.color());
  }

  String department() {
    return faker.random.list(faker.definitions.department());
  }

  String productName() {
    return '${productAdjective()} ${productMaterial()} ${product()}';
  }

  String price({
    double min,
    double max,
    int precision,
    String symbol,
  }) {
    min ??= 1;
    max ??= 1000;
    precision ??= 2;
    symbol ??= '';

    if (min < 0 || max < 0) {
      return '${symbol}0.00';
    }

    final value =
        faker.random.number(max: max, min: min, precision: pow(10, -precision));

    return symbol + value.toStringAsFixed(precision);
  }

  String productAdjective() {
    return faker.random.list(faker.definitions.productAdjective());
  }

  String productMaterial() {
    return faker.random.list(faker.definitions.productMaterial());
  }

  String product() {
    return faker.random.list(faker.definitions.product());
  }
}
