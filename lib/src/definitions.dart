import 'package:fakedart/src/definitions/en.dart';
import 'package:fakedart/src/definitions/en_us.dart';
import 'package:fakedart/src/faker.dart';

final _localeSplitRegex = RegExp('[_-]');

abstract class Definitions {
  final Faker faker;

  factory Definitions(
    Faker faker,
    String locale,
  ) {
    final parts = locale.toLowerCase().split(_localeSplitRegex);
    final langCode = parts[0];
    final countryCode = parts.length == 2 ? parts[1] : null;

    if (langCode == 'en') {
      if (countryCode == 'us') {
        return EnUsDefinitions(faker);
      }
    }

    return EnDefinitions(faker);
  }

  List<String> postCode();

  List<int> postCodeByState(String state);

  List<String> streetPrefix();

  List<String> streetSuffix();

  List<String> cityPrefix();

  List<String> citySuffix();

  List<String> secondaryAddress();

  List<String> county();

  List<String> country();

  List<String> countryCode();

  List<String> state();

  List<String> stateAbbr();

  List<String> ordinalDirection();

  List<String> ordinalDirectionAbbr();

  List<String> cardinalDirection();

  List<String> cardinalDirectionAbbr();

  List<String> direction();

  List<String> directionAbbr();

  List<String> maleFirstName();

  List<String> femaleFirstName();

  List<String> firstName();

  List<String> maleLastName();

  List<String> femaleLastName();

  List<String> lastName();

  List<String> namePrefix();

  List<String> maleNamePrefix();

  List<String> femaleNamePrefix();

  List<String> nameSuffix();

  List<String> gender();

  List<String> nameTitleDescriptor();

  List<String> nameTitleLevel();

  List<String> nameTitleJob();

  List<String> color();

  List<String> department();

  List<String> productAdjective();

  List<String> productMaterial();

  List<String> product();

  List<String> companyAdjective();

  List<String> bsAdjective();

  List<String> bsNoun();

  List<String> bsVerb();

  List<String> companyDescriptor();

  List<String> companyNoun();

  List<String> companySuffix();

  List<String> databaseCollation();

  List<String> databaseColumn();

  List<String> databaseEngine();

  List<String> databaseType();

  List<String> month();

  List<String> monthAbbr();

  List<String> weekday();

  List<String> weekdayAbbr();

  List<String> hackerAbbr();

  List<String> hackerAdjective();

  List<String> hackerNoun();

  List<String> hackerIngVerb();

  List<String> hackerVerb();

  List<String> hackerPhrase(
    String abbr,
    String adjective,
    String noun,
    String verb,
    String ingverb,
  );

  List<String> avatarUri();

  List<String> domainSuffix();

  List<String> exampleEmail();

  List<String> freeEmail();

  List<String> accountType();

  List<String> currencyCode();

  List<String> currencySymbol();

  List<String> currencyName();

  List<String> transactionType();

  List<String> creditCardProvider();

  List<String> creditCard(String provider);

  List<String> phoneNumber();

  List<String> vehicleFuel();

  List<String> vehicleManufacturer();

  List<String> vehicleModel();

  List<String> vehicleType();

  List<String> loremWord();
}
