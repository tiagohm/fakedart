import 'package:fakedart/src/faker.dart';

class Vehicle {
  final Faker faker;

  Vehicle(this.faker);

  String vehicle() {
    return '${manufacturer()} ${model()}';
  }

  String manufacturer() {
    return faker.random.list(faker.definitions.vehicleManufacturer());
  }

  String model() {
    return faker.random.list(faker.definitions.vehicleModel());
  }

  String type() {
    return faker.random.list(faker.definitions.vehicleType());
  }

  String fuel() {
    return faker.random.list(faker.definitions.vehicleFuel());
  }

  String vin() {
    final a = faker.random.alphaNumeric(10).toUpperCase();
    final b = faker.random.alpha(1, upper: true);
    final c = faker.random.alphaNumeric(1).toUpperCase();
    final d = faker.random.nextInt(100000, 10000); // five digits.
    return '$a$b$c$d';
  }

  String color() {
    return faker.commerce.color();
  }
}
