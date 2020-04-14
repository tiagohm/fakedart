import 'package:fakedart/src/faker.dart';

const _hexChars = '0123456789abcdef';

class Internet {
  final Faker faker;

  Internet(this.faker);

  String avatar() {
    return faker.random.list(faker.definitions.avatarUri());
  }

  String email({
    String firstName,
    String lastName,
    String provider,
  }) {
    provider ??= faker.random.list(faker.definitions.freeEmail());
    final username = faker.helpers
        .slugify(userName(firstName: firstName, lastName: lastName));
    return '$username@$provider';
  }

  String exampleEmail({
    String firstName,
    String lastName,
  }) {
    final provider = faker.random.list(faker.definitions.exampleEmail());
    return email(firstName: firstName, lastName: lastName, provider: provider);
  }

  String userName({
    String firstName,
    String lastName,
  }) {
    firstName ??= faker.name.firstName();
    lastName ??= faker.name.lastName();

    String res;

    switch (faker.random.nextInt(2)) {
      case 1:
        final sep = faker.random.list(const ['.', '_']);
        res = '$firstName$sep$lastName';
        break;
      case 0:
        final sep = faker.random.list(const ['.', '_']);
        res = '$firstName$sep$lastName${faker.random.nextInt(99)}';
        break;
      default:
        res = '$firstName${faker.random.nextInt(99)}';
        break;
    }

    return res.replaceAll("'", '').replaceAll(' ', '');
  }

  String protocol() {
    return faker.random.list(const ['http', 'https']);
  }

  String url() {
    return '${protocol()}://${domainName()}';
  }

  String domainName() {
    return '${domainWord()}.${domainSuffix()}';
  }

  String domainSuffix() {
    return faker.random.list(faker.definitions.domainSuffix());
  }

  static final _domainWordRegex = RegExp('''[\\~#&*{}/:<>?|\"']''');

  String domainWord() {
    return faker.name
        .firstName()
        .replaceAll(_domainWordRegex, '')
        .toLowerCase();
  }

  String ip() {
    return List.generate(4, (i) => faker.random.nextInt(255)).join('.');
  }

  String ipv6() {
    return List.generate(8,
            (i) => List.generate(4, (k) => faker.random.char(_hexChars)).join())
        .join(':');
  }

  // TODO:
  String userAgent() {
    throw UnimplementedError();
  }

  String color() {
    final red = faker.random.nextInt(256).toRadixString(16).padLeft(2, '0');
    final green = faker.random.nextInt(256).toRadixString(16).padLeft(2, '0');
    final blue = faker.random.nextInt(256).toRadixString(16).padLeft(2, '0');
    return '#$red$green$blue';
  }

  String mac({
    String sep = ':',
  }) {
    sep = !const [':', '-', ''].contains(sep) ? ':' : sep;

    final sb = StringBuffer();

    for (var i = 0; i < 12; i++) {
      sb.write(faker.random.char(_hexChars));

      if (i.isOdd && i != 11) {
        sb.write(sep);
      }
    }

    return sb.toString();
  }

  // TODO:
  String password() {
    throw UnimplementedError();
  }
}
