import 'package:fakedart/src/faker.dart';

class Lorem {
  final Faker faker;

  Lorem(this.faker);

  String word() {
    return faker.random.list(faker.definitions.loremWord());
  }

  String words({int count}) {
    return List.generate(count ?? 3, (i) => word()).join(' ');
  }

  String sentence({int count}) {
    final s = words(count: count);
    return s[0].toUpperCase() + s.substring(1);
  }

  String slug({int count}) {
    return faker.helpers.slugify(words(count: count));
  }

  String sentences({
    int count,
    String separator = ' ',
  }) {
    return List.generate(count ?? 3, (i) => sentence()).join(separator);
  }

  String paragraph({
    int count,
  }) {
    return sentences(count: (count ?? 3) + faker.random.nextInt(4));
  }

  String paragraphs({
    int count,
    String separator = '\n',
  }) {
    return List.generate(count ?? 3, (i) => paragraph()).join(separator);
  }

  String text() {
    return faker.random.list([
      word,
      words,
      sentence,
      sentences,
      paragraph,
      paragraphs,
      lines,
    ])();
  }

  String lines({int count}) {
    return sentences(count: count, separator: '\n');
  }
}
