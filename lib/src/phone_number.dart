import 'package:fakedart/src/faker.dart';

class PhoneNumber {
  final Faker faker;

  PhoneNumber(this.faker);

  String phoneNumberFormat() {
    return faker.random.list(faker.definitions.phoneNumber());
  }

  String phoneNumber([String format]) {
    format ??= phoneNumberFormat();
    return faker.helpers.replaceSymbolWithNumber(format);
  }
}
