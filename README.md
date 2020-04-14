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
