import 'dart:math';

import 'package:fakedart/src/address.dart';
import 'package:fakedart/src/commerce.dart';
import 'package:fakedart/src/definitions.dart';
import 'package:fakedart/src/helpers.dart';
import 'package:fakedart/src/name.dart';

class Faker {
  final Random random;
  final String locale;

  Definitions _definitions;
  Helpers _helpers;
  Address _address;
  Name _name;
  Commerce _commerce;

  Faker._(this.random, this.locale)
      : assert(random != null),
        assert(locale != null && locale.isNotEmpty);

  factory Faker({
    String locale = 'en',
  }) {
    return Faker._(Random(), locale);
  }

  factory Faker.seed(
    int seed, {
    String locale = 'en',
  }) {
    return Faker._(Random(seed), locale);
  }

  factory Faker.secure({
    String locale = 'en',
  }) {
    return Faker._(Random.secure(), locale);
  }

  Faker withLocale(String locale) {
    return Faker._(random, locale);
  }

  Definitions get definitions => _definitions ??= Definitions(this, locale);

  Helpers get helpers => _helpers ??= Helpers(this);

  Address get address => _address ??= Address(this);

  Name get name => _name ??= Name(this);

  Commerce get commerce => _commerce ??= Commerce(this);
}
