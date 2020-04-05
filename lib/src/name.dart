import 'package:fakedart/src/faker.dart';
import 'package:fakedart/src/gender.dart';
import 'package:fakedart/src/random.dart';

class Name {
  final Faker faker;

  Name(this.faker);

  String firstName([Gender gender]) {
    final maleFirstName = faker.definitions.maleFirstName();
    final femaleFirstName = faker.definitions.femaleFirstName();
    final firstName = faker.definitions.firstName();
    List<String> names;

    if (gender == null || gender == Gender.neutral) {
      names = firstName ??
          (faker.random.nextBool() ? maleFirstName : femaleFirstName);
    } else if (gender == Gender.female) {
      names = femaleFirstName ?? firstName;
    } else {
      names = maleFirstName ?? firstName;
    }

    return faker.random.list(names);
  }

  String lastName([Gender gender]) {
    final maleLastName = faker.definitions.maleLastName();
    final femaleLastName = faker.definitions.femaleLastName();
    final lastName = faker.definitions.lastName();
    List<String> names;

    if (gender == null || gender == Gender.neutral) {
      names =
          lastName ?? (faker.random.nextBool() ? maleLastName : femaleLastName);
    } else if (gender == Gender.female) {
      names = femaleLastName ?? lastName;
    } else {
      names = maleLastName ?? lastName;
    }

    return faker.random.list(names);
  }

  String gender() {
    return faker.random.list(faker.definitions.gender());
  }

  String prefix([Gender gender]) {
    final maleNamePrefix = faker.definitions.maleNamePrefix();
    final femaleNamePrefix = faker.definitions.femaleNamePrefix();
    final namePrefix = faker.definitions.namePrefix();
    List<String> prefixes;

    if (gender == null || gender == Gender.neutral) {
      prefixes = namePrefix ??
          (faker.random.nextBool() ? maleNamePrefix : femaleNamePrefix);
    } else if (gender == Gender.female) {
      prefixes = femaleNamePrefix ?? namePrefix;
    } else {
      prefixes = maleNamePrefix ?? namePrefix;
    }

    return faker.random.list(prefixes);
  }

  String suffix([Gender gender]) {
    return faker.random.list(faker.definitions.nameSuffix());
  }

  String fullName([Gender gender]) {
    final first = firstName(gender);
    final last = lastName(gender);
    final n = faker.random.rand(9);

    if (n == 0) {
      final p = prefix(gender);

      if (p != null) {
        return '$p $first $last';
      }
    } else if (n == 1) {
      final s = suffix(gender);

      if (s != null) {
        return '$s $first $last';
      }
    }

    return '$first $last';
  }

  String jobTitle() {
    return '${jobDescriptor()} ${jobArea()} ${jobType()}';
  }

  String jobDescriptor() {
    return faker.random.list(faker.definitions.nameTitleDescriptor());
  }

  String jobArea() {
    return faker.random.list(faker.definitions.nameTitleLevel());
  }

  String jobType() {
    return faker.random.list(faker.definitions.nameTitleJob());
  }
}
