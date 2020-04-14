import 'package:fakedart/src/faker.dart';

class Date {
  final Faker faker;

  Date(this.faker);

  DateTime past({
    int years = 1,
    DateTime reference,
  }) {
    assert(years > 0);

    final date = reference ?? DateTime.now();
    const min = 1000;
    final max = years * 365 * 24 * 3600 * 1000;
    final past = faker.random.nextInt(max, min);

    return DateTime.fromMillisecondsSinceEpoch(
      date.millisecondsSinceEpoch - past,
    );
  }

  DateTime future({
    int years = 1,
    DateTime reference,
  }) {
    assert(years > 0);

    final date = reference ?? DateTime.now();
    const min = 1000;
    final max = years * 365 * 24 * 3600 * 1000;
    final past = faker.random.nextInt(max, min);

    return DateTime.fromMillisecondsSinceEpoch(
      date.millisecondsSinceEpoch + past,
    );
  }

  DateTime between(
    DateTime from,
    DateTime to,
  ) {
    final span = to.millisecondsSinceEpoch - from.millisecondsSinceEpoch;
    final offset = faker.random.nextInt(span);

    return DateTime.fromMillisecondsSinceEpoch(
      from.millisecondsSinceEpoch + offset,
    );
  }

  DateTime recent({
    int days = 1,
    DateTime reference,
  }) {
    assert(days > 0);

    final date = reference ?? DateTime.now();
    const min = 1000;
    final max = days * 24 * 3600 * 1000;
    final past = faker.random.nextInt(max, min);

    return DateTime.fromMillisecondsSinceEpoch(
      date.millisecondsSinceEpoch - past,
    );
  }

  DateTime soon({
    int days = 1,
    DateTime reference,
  }) {
    assert(days > 0);

    final date = reference ?? DateTime.now();
    const min = 1000;
    final max = days * 24 * 3600 * 1000;
    final past = faker.random.nextInt(max, min);

    return DateTime.fromMillisecondsSinceEpoch(
      date.millisecondsSinceEpoch + past,
    );
  }

  String month({
    bool abbr = false,
  }) {
    return faker.random
        .list(abbr ? faker.definitions.monthAbbr() : faker.definitions.month());
  }

  String weekday({
    bool abbr = false,
  }) {
    return faker.random.list(
        abbr ? faker.definitions.weekdayAbbr() : faker.definitions.weekday());
  }
}
