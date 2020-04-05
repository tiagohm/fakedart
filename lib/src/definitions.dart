import 'package:fakedart/src/faker.dart';

import 'package:fakedart/src/locales/en.dart' as en;
import 'package:fakedart/src/locales/en_us.dart' as en_us;

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
        return _EnUsDefinitions(faker);
      }
    }

    return _EnDefinitions(faker);
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
}

// Fallback definitions.
class _EnDefinitions implements Definitions {
  @override
  final Faker faker;

  _EnDefinitions(this.faker);

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
}

class _EnUsDefinitions extends _EnDefinitions {
  _EnUsDefinitions(Faker faker) : super(faker);

  @override
  List<int> postCodeByState(String state) {
    return en_us.postCodeByState[state?.toUpperCase()];
  }
}
