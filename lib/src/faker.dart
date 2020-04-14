import 'package:fakedart/src/address.dart';
import 'package:fakedart/src/commerce.dart';
import 'package:fakedart/src/company.dart';
import 'package:fakedart/src/database.dart';
import 'package:fakedart/src/date.dart';
import 'package:fakedart/src/definitions.dart';
import 'package:fakedart/src/git.dart';
import 'package:fakedart/src/hacker.dart';
import 'package:fakedart/src/helpers.dart';
import 'package:fakedart/src/internet.dart';
import 'package:fakedart/src/name.dart';
import 'package:fakedart/src/random.dart';

class Faker {
  final Random random;
  final String locale;

  Definitions _definitions;
  Helpers _helpers;
  Address _address;
  Name _name;
  Commerce _commerce;
  Company _company;
  Database _database;
  Date _date;
  Hacker _hacker;
  Git _git;
  Internet _internet;

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
    return Faker._(Random.seed(seed), locale);
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

  Company get company => _company ??= Company(this);

  Database get database => _database ??= Database(this);

  Date get date => _date ??= Date(this);

  Hacker get hacker => _hacker ??= Hacker(this);

  Git get git => _git ??= Git(this);

  Internet get internet => _internet ??= Internet(this);
}
