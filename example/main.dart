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
  print(faker.name.fullName());

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

  print(faker.database.engine());
  print(faker.database.collation());
  print(faker.database.column());
  print(faker.database.type());

  print(faker.date.between(DateTime(1994, 1, 1), DateTime.now()));
  print(faker.date.future());
  print(faker.date.past());
  print(faker.date.recent());
  print(faker.date.soon());
  print(faker.date.weekday());
  print(faker.date.month(abbr: true));

  print(faker.hacker.abbreviation());
  print(faker.hacker.adjective());
  print(faker.hacker.ingVerb());
  print(faker.hacker.noun());
  print(faker.hacker.phrase());
  print(faker.hacker.verb());

  print(faker.git.branch());
  print(faker.git.commitEntry());
  print(faker.git.commitMessage());
  print(faker.git.commitSha());
  print(faker.git.shortSha());

  print(faker.internet.avatar());
  print(faker.internet.color());
  print(faker.internet.domainName());
  print(faker.internet.domainSuffix());
  print(faker.internet.domainWord());
  print(faker.internet.email());
  print(faker.internet.exampleEmail());
  print(faker.internet.ip());
  print(faker.internet.ipv6());
  print(faker.internet.mac());
  print(faker.internet.protocol());
  print(faker.internet.url());
  print(faker.internet.userName());

  print(faker.finance.account());
  print(faker.finance.accountName());
  print(faker.finance.routingNumber());
  print(faker.finance.amount());
  print(faker.finance.transactionType());
  print(faker.finance.currencyCode());
  print(faker.finance.currencyName());
  print(faker.finance.currencySymbol());
  print(faker.finance.bitcoinAddress());
  print(faker.finance.creditCardCVV());
  print(faker.finance.ethereumAddress());
  print(faker.finance.iban(country: 'BR'));
  print(faker.finance.bic());
  print(faker.finance.creditCardProvider());
  print(faker.finance.creditCardNumber('JCB'));

  print(faker.phoneNumber.phoneNumberFormat());
  print(faker.phoneNumber.phoneNumber());

  print(faker.vehicle.color());
  print(faker.vehicle.fuel());
  print(faker.vehicle.manufacturer());
  print(faker.vehicle.model());
  print(faker.vehicle.type());
  print(faker.vehicle.vehicle());
  print(faker.vehicle.vin());
}
