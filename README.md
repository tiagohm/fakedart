# Fakedart

This library is a port of [faker.js](https://github.com/Marak/faker.js) that generates fake data.

### Installation

In `pubspec.yaml`.

```yaml
dependencies:
  fakedart: ^0.1.0
```

### How to use

Create an instance of `Faker` class.

```dart
final faker = Faker();
```

You can initialize with a seed value.

```dart
final faker = Faker.seed(0);
```

### Address

```dart
faker.address.streetAddress(); // returns "95487 Mazie Cove"
```

```dart
faker.address.streetAddress(full: true); // returns "95487 Mazie Cove Apt. 819"
```

```dart
faker.address.secondaryAddress(); // returns "Apt. 819"
```

```dart
faker.address.city(); // returns "Lake Wiley berg"
```

```dart
faker.address.state(); // returns "Wyoming"
```

```dart
faker.address.stateAbbr(); // returns "HI"
```

```dart
faker.address.county(); // returns "Avon"
```

```dart
faker.address.country(); // returns "Brazil"
```

```dart
faker.address.countryCode(); // returns "BR"
```

```dart
faker.address.zipCode(); // returns "90062" or "90062-612"
```

```dart
faker.address.zipCode("#####-###"); // returns "90062-612"
```

```dart
faker.address.latitude(); // returns "-4.6120"
```

```dart
faker.address.longitude(); // returns "27.9893"
```

```dart
faker.address.cityPrefix(); // returns "Lake"
```

```dart
faker.address.citySuffix(); // returns "chester"
```

```dart
faker.address.streetName(); // returns "Von Club"
```

```dart
faker.address.streetSuffix(); // returns "Mountains"
```

```dart
faker.address.streetPrefix(); // returns "b"
```

```dart
faker.address.direction(); // returns "East" or "Northwest"
```

```dart
faker.address.direction(abbr: true); // returns "E" or "NW"
```

```dart
faker.address.cardinalDirection(); // returns "East"
```

```dart
faker.address.ordinalDirection(); // returns "Northwest"
```

### Name

```dart
faker.name.firstName(); // returns "Elta"
```

```dart
faker.name.lastName(Gender.male); // returns "Kreiger"
```

```dart
faker.name.fullName(); // returns "Tracy Jaskolski"
```

```dart
faker.name.gender(); // returns "Man"
```

```dart
faker.name.jobArea(); // returns "Security"
```

```dart
faker.name.jobDescriptor(); // returns "Internal"
```

```dart
faker.name.jobTitle(); // returns "Lead Integration Technician"
```

```dart
faker.name.jobType(); // returns "Director"
```

```dart
faker.name.prefix(); // returns "Mrs."
```

```dart
faker.name.suffix()); // returns "Jr."
```

### Commerce

```dart
faker.commerce.color(); // returns "orange"
```

```dart
faker.commerce.department(); // returns "Tools"
```

```dart
faker.commerce.product(); // returns "Cheese"
```

```dart
faker.commerce.productAdjective(); // returns "Practical"
```

```dart
faker.commerce.productMaterial(); // returns "Metal"
```

```dart
faker.commerce.productName(); // returns "Intelligent Frozen Pants"
```

```dart
faker.commerce.price(symbol: r'$'); // returns "$231.14"
```

### Company

```dart
faker.company.bs(); // returns "visualize innovative web-readiness"
```

```dart
faker.company.bsAdjective(); // returns "user-centric"
```

```dart
faker.company.bsBuzz(); // returns "innovate"
```

```dart
faker.company.bsNoun(); // returns "platforms"
```

```dart
faker.company.catchPhrase(); // returns "Customer-focused web-enabled internet solution"
```

```dart
faker.company.catchPhraseAdjective(); // returns "Enhanced"
```

```dart
faker.company.catchPhraseDescriptor(); // returns "full-range"
```

```dart
faker.company.catchPhraseNoun(); // returns "moderator"
```

```dart
faker.company.companyName(); // returns "Schmitt, Davis & Gulgowski"
```

```dart
faker.company.companySuffix(); // returns "Inc"
```

### Database


```dart
faker.database.engine(); // returns "ARCHIVE"
```

```dart
faker.database.collation(); // returns "cp1250_general_ci"
```

```dart
faker.database.column(); // returns "group"
```

```dart
faker.database.type(); // returns "smallint"
```

### Date

```dart
faker.date.between(DateTime(1994, 1, 1), DateTime.now()); // returns "1994-07-02 06:13:56.177"
```

```dart
faker.date.future(); // returns "2020-05-28 23:44:27.156"
```

```dart
faker.date.past(); // returns "2019-12-13 04:30:22.968"
```

```dart
faker.date.recent(); // returns "2020-04-13 13:13:02.628"
```

```dart
faker.date.soon(); // returns "2020-04-15 06:22:24.483"
```

```dart
faker.date.weekday(); // returns "Sunday"
```

```dart
faker.date.month(abbr: true); // returns "Nov"
```

### Hacker

```dart
faker.hacker.abbreviation(); // returns "JSON"
```

```dart
faker.hacker.adjective(); // returns "back-end"
```

```dart
faker.hacker.ingVerb(); // returns "indexing"
```

```dart
faker.hacker.noun(); // returns "interface"
```

```dart
faker.hacker.phrase(); // returns "The AGP hard drive is down, navigate the redundant hard drive so we can navigate the AGP hard drive!"
```

```dart
faker.hacker.verb(); // returns "calculate"
```

### Git

```dart
faker.git.branch(); // returns "transmitter-transmit"
```

```dart
faker.git.commitEntry(); // returns "commit 48548fe57716823bd206e2d9afdfca091c375f71..."
```

```dart
faker.git.commitMessage(); // returns "generate cross-platform program"
```

```dart
faker.git.commitSha(); // returns "0994c16cfdcb752d58b884fbe81f6ae2c9d0b98a"
```

```dart
faker.git.shortSha(); // returns "e2b79c1"
```

### Internet

```dart
faker.internet.avatar(); // returns "https://s3.amazonaws.com/uifaces/faces/twitter/robergd/128.jpg"
```

```dart
faker.internet.color(); // returns "#03764e"
```

```dart
faker.internet.domainName(); // returns "khalid.biz"
```

```dart
faker.internet.domainSuffix(); // returns "name"
```

```dart
faker.internet.domainWord(); // returns "kenna"
```

```dart
faker.internet.email(); // returns "Ike.Wolff31@yahoo.com"
```

```dart
faker.internet.exampleEmail(); // returns "Jacinthe_Rodriguez9@example.com"
```

```dart
faker.internet.ip(); // returns "62.215.32.241"
```

```dart
faker.internet.ipv6(); // returns "8deb:d69a:ceca:7123:c7da:7e42:a4d5:9f60"
```

```dart
faker.internet.mac(); // returns "a5:9f:30:71:3f:12"
```

```dart
faker.internet.protocol(); // returns "http"
```

```dart
faker.internet.url(); // returns "https://cynthia.biz"
```

```dart
faker.internet.userName(); // returns "Weldon.Crooks78"
```

### Finance

```dart
faker.finance.account(); // returns "61154668"
```

```dart
faker.finance.accountName(); // returns "Savings Account"
```

```dart
faker.finance.routingNumber(); // returns "999999992"
```

```dart
faker.finance.amount(); // returns "120.11"
```

```dart
faker.finance.transactionType(); // returns "120.11"
```

```dart
faker.finance.currencyCode(); // returns "AUD"
```

```dart
faker.finance.currencySymbol(); // returns "£"
```

```dart
faker.finance.currencyName(); // returns "Lempira"
```

```dart
faker.finance.bitcoinAddress(); // returns "368nSdrGofQf8EsoPW7j1BZ2cgK"
```

```dart
faker.finance.creditCardCVV(); // returns "402"
```

```dart
faker.finance.ethereumAddress(); // returns "0x89d524d9ed74d4a53aeb0b8868e20ac3eaad4d2a"
```

```dart
faker.finance.iban(); // returns "BR6853001208500339920050065P4"
```

```dart
faker.finance.bic(); // returns "CYALNAT1"
```

```dart
faker.finance.creditCardProvider(); // returns "Visa"
```

```dart
faker.finance.creditCardNumber(); // returns "3541001109818219"
```

### Phone Number

```dart
faker.phoneNumber.phoneNumberFormat(); // returns "(!##) !##-####"
```

```dart
faker.phoneNumber.phoneNumber(); // returns "222.547.8307"
```

### Vehicle

```dart
faker.vehicle.color(); // returns "green"
```

```dart
faker.vehicle.fuel(); // returns "Hybrid"
```

```dart
faker.vehicle.manufacturer(); // returns "Dodge"
```

```dart
faker.vehicle.model(); // returns "Jetta"
```

```dart
faker.vehicle.type(); // returns "Wagon"
```

```dart
faker.vehicle.vehicle(); // returns "Dodge ATS"
```

```dart
faker.vehicle.vin(); // returns "P58HYB6D4LXW25574"
```