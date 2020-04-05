import 'package:fakedart/fakedart.dart';

void main() {
  final faker = Faker.seed(0);

  print(faker.address.cardinalDirection());
  print(faker.address.city());
  print(faker.address.cityPrefix());
  print(faker.address.citySuffix());
  print(faker.address.country());
  print(faker.address.countryCode());
  print(faker.address.county());
  print(faker.address.direction());
  print(faker.address.latitude(precision: 2));
  print(faker.address.longitude());
  print(faker.address.ordinalDirection());
  print(faker.address.secondaryAddress());
  print(faker.address.state());
  print(faker.address.streetAddress());
  print(faker.address.streetName());
  print(faker.address.streetPrefix());
  print(faker.address.streetSuffix());
  print(faker.address.zipCode());

  print(faker.name.firstName());
  print(faker.name.gender());
  print(faker.name.jobArea());
  print(faker.name.jobDescriptor());
  print(faker.name.jobTitle());
  print(faker.name.jobType());
  print(faker.name.lastName(Gender.male));
  print(faker.name.prefix());
  print(faker.name.suffix());

  print(faker.commerce.color());
  print(faker.commerce.department());
  print(faker.commerce.product());
  print(faker.commerce.productAdjective());
  print(faker.commerce.productMaterial());
  print(faker.commerce.productName());
  print(faker.commerce.price(symbol: r'$'));

  print(faker.company.bs());
  print(faker.company.bsAdjective());
  print(faker.company.bsBuzz());
  print(faker.company.bsNoun());
  print(faker.company.catchPhrase());
  print(faker.company.catchPhraseAdjective());
  print(faker.company.catchPhraseDescriptor());
  print(faker.company.catchPhraseNoun());
  print(faker.company.companyName());
  print(faker.company.companySuffix());
}
