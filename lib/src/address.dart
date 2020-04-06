import 'dart:math';

import 'package:fakedart/src/faker.dart';

class Address {
  final Faker faker;

  Address(this.faker);

  /// Generates random zipcode from [format].
  /// If [format] is not specified, the current locale format is used.
  String zipCode([String format]) {
    format ??= faker.random.list(faker.definitions.postCode());
    return faker.helpers.replaceSymbols(format);
  }

  /// Generates random zipcode from [state] abbreviation.
  /// If state abbreviation is not specified, a random zip code is generated
  /// according to the current locale.
  /// If a locale does not have a zip code by state, a random zip code
  /// is generated according to the current locale.
  String zipCodeByState(String state) {
    final range = faker.definitions.postCodeByState(state);
    return range != null && range.isNotEmpty
        ? faker.random.nextInt(range[1], range[0])
        : zipCode();
  }

  String city() {
    final format = faker.random.nextInt(4);

    if (format == 0) {
      return '${cityPrefix()} ${faker.name.firstName()}${citySuffix()}';
    } else if (format == 1) {
      return '${cityPrefix()} ${faker.name.firstName()}';
    } else if (format == 2) {
      return '${faker.name.firstName()}${citySuffix()}';
    } else {
      return '${faker.name.lastName()}${citySuffix()}';
    }
  }

  /// Generates a random localized city prefix.
  String cityPrefix() {
    return faker.random.list(faker.definitions.cityPrefix());
  }

  /// Generates a random localized city suffix.
  String citySuffix() {
    return faker.random.list(faker.definitions.citySuffix());
  }

  String streetName() {
    final sb = StringBuffer();

    if (faker.random.nextBool()) {
      sb.write(faker.name.lastName());
    } else {
      sb.write(faker.name.firstName());
    }

    final suffix = streetSuffix();

    if (suffix != null && suffix.isNotEmpty) {
      sb.write(' $suffix');
    }

    return sb.toString();
  }

  String streetAddress({
    bool full = false,
  }) {
    final number = faker.helpers.replaceSymbolWithNumber(
      '###'.padRight(faker.random.nextInt(6, 3), '#'),
    );

    if (full) {
      return '$number ${streetName()} ${secondaryAddress()}';
    } else {
      return '$number ${streetName()}';
    }
  }

  String streetPrefix() {
    return faker.random.list(faker.definitions.streetPrefix());
  }

  String streetSuffix() {
    return faker.random.list(faker.definitions.streetSuffix());
  }

  String secondaryAddress() {
    final sa = faker.random.list(faker.definitions.secondaryAddress());
    return faker.helpers.replaceSymbolWithNumber(sa);
  }

  String county() {
    return faker.random.list(faker.definitions.county());
  }

  String country() {
    return faker.random.list(faker.definitions.country());
  }

  String countryCode() {
    return faker.random.list(faker.definitions.countryCode());
  }

  String state({
    bool abbr = false,
  }) {
    return faker.random
        .list(abbr ? faker.definitions.stateAbbr() : faker.definitions.state());
  }

  String latitude({
    double max,
    double min,
    int precision,
  }) {
    max ??= 90;
    min ??= -90;
    precision ??= 4;

    return faker.random
        .nextNumber(max: max, min: min, precision: pow(10.0, -precision))
        .toStringAsFixed(precision);
  }

  String longitude({
    double max,
    double min,
    int precision,
  }) {
    max ??= 180;
    min ??= -180;
    precision ??= 4;

    return faker.random
        .nextNumber(max: max, min: min, precision: pow(10.0, -precision))
        .toStringAsFixed(precision);
  }

  String direction({
    bool abbr = false,
  }) {
    return faker.random.list(abbr
        ? faker.definitions.directionAbbr()
        : faker.definitions.direction());
  }

  String cardinalDirection({
    bool abbr = false,
  }) {
    return faker.random.list(abbr
        ? faker.definitions.cardinalDirectionAbbr()
        : faker.definitions.cardinalDirection());
  }

  String ordinalDirection({
    bool abbr = false,
  }) {
    return faker.random.list(abbr
        ? faker.definitions.ordinalDirectionAbbr()
        : faker.definitions.ordinalDirection());
  }
}
