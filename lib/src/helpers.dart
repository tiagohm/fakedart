import 'package:checkdigit/checkdigit.dart';
import 'package:fakedart/src/constants.dart';
import 'package:fakedart/src/faker.dart';

final _slugifyRegex = RegExp(r'[^\w\.\-]+');

class Helpers {
  final Faker faker;

  Helpers(this.faker);

  String replaceSymbols(String text) {
    final sb = StringBuffer();

    if (text != null) {
      for (var i = 0; i < text.length; i++) {
        final c = text[i];

        if (c == '#') {
          sb.write(faker.random.nextInt(10));
        } else if (c == '?') {
          sb.write(faker.random.char(alphaUppercaseChars));
        } else if (c == '*') {
          sb.write(faker.random.nextBool()
              ? faker.random.char(alphaUppercaseChars)
              : faker.random.nextInt(10));
        } else {
          sb.write(c);
        }
      }
    }

    return sb.toString();
  }

  String replaceSymbolWithNumber(
    String text, [
    String symbol = '#',
  ]) {
    final sb = StringBuffer();

    if (text != null) {
      for (var i = 0; i < text.length; i++) {
        final c = text[i];

        if (c == symbol) {
          sb.write(faker.random.nextInt(10));
        } else if (c == '!') {
          sb.write(faker.random.nextInt(10, 2));
        } else {
          sb.write(c);
        }
      }
    }

    return sb.toString();
  }

  String slugify(String text) {
    return text.replaceAll(' ', '-').replaceAll(_slugifyRegex, '');
  }

  static final _notADigit = RegExp(r'\D');

  String replaceCreditCardSymbols(
    String text, [
    String symbol = '#',
  ]) {
    text = replaceByRegex(text);
    text = replaceSymbolWithNumber(text, symbol);
    text = text.replaceAll(_notADigit, '');
    final cd = luhn.checkDigit(text);
    return '$text$cd';
  }

  static final _rangeRepeatRegex = RegExp(r'(.)\{(\d+)\,(\d+)\}');
  static final _repeatRegex = RegExp(r'(.)\{(\d+)\}');
  static final _rangeRegex = RegExp(r'\[(\d+)\-(\d+)\]');

  String replaceByRegex(String text) {
    RegExpMatch m;
    // Range Repeat.
    while ((m = _rangeRepeatRegex.firstMatch(text)) != null) {
      final rc = m.group(1);
      final min = int.parse(m.group(2));
      final max = int.parse(m.group(3));
      final n = faker.random.nextInt(max + 1, min);

      final a = text.substring(0, m.start);
      final b = ''.padLeft(n, rc);
      final c = text.substring(m.end);

      text = '$a$b$c';
    }

    // Repeat.
    while ((m = _repeatRegex.firstMatch(text)) != null) {
      final rc = m.group(1);
      final n = int.parse(m.group(2));

      final a = text.substring(0, m.start);
      final b = ''.padLeft(n, rc);
      final c = text.substring(m.end);

      text = '$a$b$c';
    }

    // Range.
    while ((m = _rangeRegex.firstMatch(text)) != null) {
      final min = int.parse(m.group(1));
      final max = int.parse(m.group(2));
      final n = faker.random.nextInt(max + 1, min);

      final a = text.substring(0, m.start);
      final b = n.toString();
      final c = text.substring(m.end);

      text = '$a$b$c';
    }

    return text;
  }
}
