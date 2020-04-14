import 'package:fakedart/src/faker.dart';

class Hacker {
  final Faker faker;

  Hacker(this.faker);

  String abbreviation() {
    return faker.random.list(faker.definitions.hackerAbbr());
  }

  String adjective() {
    return faker.random.list(faker.definitions.hackerAdjective());
  }

  String noun() {
    return faker.random.list(faker.definitions.hackerNoun());
  }

  String verb() {
    return faker.random.list(faker.definitions.hackerVerb());
  }

  String ingVerb() {
    return faker.random.list(faker.definitions.hackerIngVerb());
  }

  String phrase() {
    return faker.random.list(faker.definitions.hackerPhrase(
      abbreviation(),
      adjective(),
      noun(),
      verb(),
      ingVerb(),
    ));
  }
}
