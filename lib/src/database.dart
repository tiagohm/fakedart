import 'package:fakedart/src/faker.dart';

class Database {
  final Faker faker;

  Database(this.faker);

  String column() {
    return faker.random.list(faker.definitions.databaseColumn());
  }

  String type() {
    return faker.random.list(faker.definitions.databaseType());
  }

  String collation() {
    return faker.random.list(faker.definitions.databaseCollation());
  }

  String engine() {
    return faker.random.list(faker.definitions.databaseEngine());
  }
}
