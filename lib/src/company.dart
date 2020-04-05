import 'package:fakedart/src/faker.dart';
import 'package:fakedart/src/random.dart';

class Company {
  final Faker faker;

  Company(this.faker);

  String companyName() {
    final name = faker.name;

    switch (faker.random.rand(3)) {
      case 0:
        return '${name.lastName()} ${companySuffix()}';
      case 1:
        return '${name.lastName()} - ${name.lastName()}';
      default:
        return '${name.lastName()}, ${name.lastName()} & ${name.lastName()}';
    }
  }

  String companySuffix() {
    return faker.random.list(faker.definitions.companySuffix());
  }

  String catchPhrase() {
    return '${catchPhraseAdjective()} ${catchPhraseDescriptor()} ${catchPhraseNoun()}';
  }

  String bs() {
    return '${bsBuzz()} ${bsAdjective()} ${bsNoun()}';
  }

  String catchPhraseAdjective() {
    return faker.random.list(faker.definitions.companyAdjective());
  }

  String catchPhraseDescriptor() {
    return faker.random.list(faker.definitions.companyDescriptor());
  }

  String catchPhraseNoun() {
    return faker.random.list(faker.definitions.companyNoun());
  }

  String bsAdjective() {
    return faker.random.list(faker.definitions.bsAdjective());
  }

  String bsBuzz() {
    return faker.random.list(faker.definitions.bsVerb());
  }

  String bsNoun() {
    return faker.random.list(faker.definitions.bsNoun());
  }
}
