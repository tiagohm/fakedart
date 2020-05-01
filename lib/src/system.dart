import 'package:fakedart/src/faker.dart';

class System {
  final Faker faker;

  System(this.faker);

  final _fileNameRegex = RegExp('( |,|-|\/|\\\\)');

  String fileName() {
    final filename = '${faker.random.words()}.${fileExt()}';
    return filename.replaceAll(_fileNameRegex, '_');
  }

  String commonFileName({String ext}) {
    final filename = '${faker.random.words()}.${ext ?? commonFileExt()}';
    return filename.replaceAll(_fileNameRegex, '_');
  }

  String fileExt() {
    return faker.random.list(faker.definitions.fileExt());
  }

  static const _commonFileExt = [
    'txt', 'pdf', 'mpeg', 'wav', 'png', 'jpeg', 'gif', 'mp4', 'mpeg', 'html', //
  ];

  String commonFileExt() {
    return faker.random.list(_commonFileExt);
  }

  static const _commonFileType = [
    'video', 'audio', 'image', //
    'text', 'application', //
  ];

  String commonFileType() {
    return faker.random.list(_commonFileType);
  }

  String mimeType() {
    return faker.random.list(faker.definitions.mimeType());
  }

  String fileType() {
    return faker.random.list(faker.definitions.fileType());
  }

  String directoryPath() {
    return faker.random.list(faker.definitions.directoryPath());
  }

  String filePath() {
    return '${directoryPath()}/${fileName()}';
  }

  String semver() {
    return '${faker.random.nextInt(10)}.${faker.random.nextInt(10)}.${faker.random.nextInt(10)}';
  }
}
