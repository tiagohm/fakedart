import 'package:fakedart/src/faker.dart';

class Helpers {
  final Faker faker;

  Helpers(this.faker);

  static const alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  String replaceSymbols(String text) {
    final sb = StringBuffer();

    if (text != null) {
      for (var i = 0; i < text.length; i++) {
        final c = text[i];

        if (c == '#') {
          sb.write(faker.random.nextInt(10));
        } else if (c == '?') {
          sb.write(faker.random.char(alpha));
        } else if (c == '*') {
          sb.write(faker.random.nextBool()
              ? faker.random.char(alpha)
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

  static final _slugifyRegex = RegExp(r'[^\w\.\-]+');

  String slugify(String text) {
    return text.replaceAll(' ', '-').replaceAll(_slugifyRegex, '');
  }
}
