import 'dart:math';

import 'package:checkdigit/checkdigit.dart' as cd;
import 'package:fakedart/src/constants.dart';
import 'package:fakedart/src/faker.dart';

class Finance {
  final Faker faker;

  Finance(this.faker);

  String account({
    int length,
  }) {
    length ??= 8;

    return faker.helpers.replaceSymbolWithNumber(''.padLeft(length, '#'));
  }

  String accountName() {
    final type = faker.random.list(faker.definitions.accountType());
    return '$type Account';
  }

  String routingNumber() {
    final sb = StringBuffer();
    final routingNumber = List.generate(8, (i) => faker.random.nextInt(10));
    var sum = 0;

    for (var i = 0; i < 8; i += 3) {
      sum += routingNumber[i] * 3;
      sum += routingNumber[i + 1] * 7;

      sb.write(routingNumber[i].toString());
      sb.write(routingNumber[i + 1].toString());

      if (i != 6) {
        sum += routingNumber[i + 2];
        sb.write(routingNumber[i + 2].toString());
      } else {
        final n = (sum / 10).ceil() * 10;
        sb.write((n - sum).toString());
      }
    }

    return sb.toString();
  }

  String amount({
    double min,
    double max,
    int precision,
    String symbol,
  }) {
    min ??= 1;
    max ??= 1000;
    precision ??= 2;
    symbol ??= '';

    final value = faker.random
        .nextNumber(max: max, min: min, precision: pow(10, -precision));

    return symbol + value.toStringAsFixed(precision);
  }

  String transactionType() {
    return faker.random.list(faker.definitions.transactionType());
  }

  String currencyCode() {
    return faker.random.list(faker.definitions.currencyCode());
  }

  String currencySymbol() {
    return faker.random.list(faker.definitions.currencySymbol());
  }

  String currencyName() {
    return faker.random.list(faker.definitions.currencyName());
  }

  String bitcoinAddress() {
    final addressLength = faker.random.nextInt(34, 25);
    final address = StringBuffer();

    address.write(faker.random.list(const ['1', '3']));

    for (var i = 0; i < addressLength; i++) {
      address.write(faker.random.char(bitcoinAddressChars));
    }

    return address.toString();
  }

  String creditCardProvider() {
    return faker.random.list(faker.definitions.creditCardProvider());
  }

  String creditCardNumber([String provider]) {
    provider ??= creditCardProvider();

    final format = faker.random.list(faker.definitions.creditCard(provider));

    if (format != null) {
      return faker.helpers.replaceCreditCardSymbols(format);
    } else {
      return null;
    }
  }

  String creditCardCVV() {
    return List.generate(3, (i) => faker.random.nextInt(10)).join();
  }

  String ethereumAddress() {
    final chars = List.generate(40, (i) => faker.random.char(hexChars)).join();
    return '0x$chars';
  }

  // https://en.wikipedia.org/wiki/International_Bank_Account_Number
  // https://bank.codes/iban/validate/
  String iban({
    String country,
  }) {
    country = country?.toUpperCase();

    final validCountryCodes = List.of(ibanFormats.keys);

    if (country != null && !validCountryCodes.contains(country)) {
      throw ArgumentError('Unknown country code: $country');
    } else {
      country ??= faker.random.list(validCountryCodes);
    }

    final ibanFormat = ibanFormats[country];
    final sb = StringBuffer();
    var count = 0;

    for (final bban in ibanFormat.bban) {
      count += bban.count;
      var c = bban.count;

      while (c > 0) {
        if (bban.type == 'a') {
          sb.write(faker.random.char(alphaUppercaseChars));
        } else if (bban.type == 'c') {
          if (faker.random.nextInt(100) < 80) {
            sb.write(faker.random.nextInt(10).toString());
          } else {
            sb.write(faker.random.char(alphaUppercaseChars));
          }
        } else {
          if (c >= 3 && faker.random.nextInt(100) < 30) {
            if (faker.random.nextBool()) {
              sb.write(faker.random.list(ibanPattern100));
              c -= 2;
            } else {
              sb.write(faker.random.list(ibanPattern10));
              c--;
            }
          } else {
            sb.write(faker.random.nextInt(10).toString());
          }
        }

        c--;
      }
    }

    final s = sb.toString().substring(0, count);
    final checksum =
        cd.iban.checkDigit('${country}00$s').toString().padLeft(2, '0');

    return '$country$checksum$s';
  }

  String bic() {
    final prob = faker.random.nextInt(100);
    final bankCode = faker.helpers.replaceSymbols('????');
    final countryCode = faker.random.list(iso3166);
    final locationCode = '${faker.random.char(alphaUppercaseChars)}1';
    final branchCode = prob < 10
        ? faker.helpers.replaceSymbols('???')
        : prob < 40 ? faker.helpers.replaceSymbols('###') : '';
    return '$bankCode$countryCode$locationCode$branchCode';
  }
}
