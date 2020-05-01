import 'package:fakedart/src/definitions.dart';
import 'package:fakedart/src/faker.dart';
import 'package:fakedart/src/locales/en.dart' as en;

class EnDefinitions implements Definitions {
  @override
  final Faker faker;

  EnDefinitions(this.faker);

  @override
  List<String> postCode() => en.postCode;

  @override
  List<int> postCodeByState(String state) => null;

  @override
  List<String> streetPrefix() => null;

  @override
  List<String> streetSuffix() => en.streetSuffix;

  @override
  List<String> cityPrefix() => en.citySuffix;

  @override
  List<String> citySuffix() => en.citySuffix;

  @override
  List<String> secondaryAddress() => en.secondaryAddress;

  @override
  List<String> ordinalDirection() => en.ordinalDirection;

  @override
  List<String> ordinalDirectionAbbr() => en.ordinalDirectionAbbr;

  @override
  List<String> cardinalDirection() => en.cardinalDirection;

  @override
  List<String> cardinalDirectionAbbr() => en.cardinalDirectionAbbr;

  @override
  List<String> direction() => en.direction;

  @override
  List<String> directionAbbr() => en.directionAbbr;

  @override
  List<String> maleFirstName() => en.maleFirstName;

  @override
  List<String> femaleFirstName() => en.femaleFirstName;

  @override
  List<String> firstName() => en.firstName;

  @override
  List<String> namePrefix() => en.namePrefix;

  @override
  List<String> nameSuffix() => en.nameSuffix;

  @override
  List<String> maleLastName() => null;

  @override
  List<String> femaleLastName() => null;

  @override
  List<String> lastName() => en.lastName;

  @override
  List<String> gender() => en.gender;

  @override
  List<String> femaleNamePrefix() => null;

  @override
  List<String> maleNamePrefix() => null;

  @override
  List<String> nameTitleDescriptor() => en.nameTitle['descriptor'];

  @override
  List<String> nameTitleLevel() => en.nameTitle['level'];

  @override
  List<String> nameTitleJob() => en.nameTitle['job'];

  @override
  List<String> country() => en.country;

  @override
  List<String> countryCode() => en.countryCode;

  @override
  List<String> county() => en.county;

  @override
  List<String> state() => en.state;

  @override
  List<String> stateAbbr() => en.stateAbbr;

  @override
  List<String> color() => en.color;

  @override
  List<String> department() => en.department;

  @override
  List<String> product() => en.product;

  @override
  List<String> productAdjective() => en.productAdjective;

  @override
  List<String> productMaterial() => en.productMaterial;

  @override
  List<String> bsAdjective() => en.bsAdjective;

  @override
  List<String> bsNoun() => en.bsNoun;

  @override
  List<String> bsVerb() => en.bsVerb;

  @override
  List<String> companyAdjective() => en.companyAdjective;

  @override
  List<String> companyDescriptor() => en.companyDescriptor;

  @override
  List<String> companyNoun() => en.companyNoun;

  @override
  List<String> companySuffix() => en.companySuffix;

  @override
  List<String> databaseCollation() => en.databaseCollation;

  @override
  List<String> databaseColumn() => en.databaseColumn;

  @override
  List<String> databaseEngine() => en.databaseEngine;

  @override
  List<String> databaseType() => en.databaseType;

  @override
  List<String> month() => en.month;

  @override
  List<String> monthAbbr() => en.monthAbbr;

  @override
  List<String> weekday() => en.weekday;

  @override
  List<String> weekdayAbbr() => en.weekdayAbbr;

  @override
  List<String> hackerAbbr() => en.hackerAbbr;

  @override
  List<String> hackerAdjective() => en.hackerAdjective;

  @override
  List<String> hackerIngVerb() => en.hackerIngVerb;

  @override
  List<String> hackerNoun() => en.hackerNoun;

  @override
  List<String> hackerVerb() => en.hackerVerb;

  @override
  List<String> hackerPhrase(
    String abbr,
    String adjective,
    String noun,
    String verb,
    String ingverb,
  ) {
    return en.hackerPhrase(abbr, adjective, noun, verb, ingverb);
  }

  @override
  List<String> avatarUri() => en.avatarUri;

  @override
  List<String> domainSuffix() => en.domainSuffix;

  @override
  List<String> exampleEmail() => en.exampleEmail;

  @override
  List<String> freeEmail() => en.freeEmail;

  @override
  List<String> accountType() => en.accountType;

  @override
  List<String> transactionType() => en.transactionType;

  @override
  List<String> currencyCode() => en.currency.map((item) => item[1]).toList();

  @override
  List<String> currencyName() => en.currency.map((item) => item[0]).toList();

  @override
  List<String> currencySymbol() => en.currency
      .map((item) => item[2])
      .where((item) => item.isNotEmpty)
      .toList();

  @override
  List<String> creditCardProvider() => en.creditCardProvider;

  @override
  List<String> creditCard(String provider) =>
      en.creditCard[provider] ?? const [];

  @override
  List<String> phoneNumber() => en.phoneNumber;

  @override
  List<String> vehicleFuel() => en.vehicleFuel;

  @override
  List<String> vehicleManufacturer() => en.vehicleManufacturer;

  @override
  List<String> vehicleModel() => en.vehicleModel;

  @override
  List<String> vehicleType() => en.vehicleType;

  @override
  List<String> loremWord() => en.loremWord;
}
