import 'package:fakedart/fakedart.dart';
import 'package:test/test.dart';

void main() {
  final faker = Faker();

  test('Slugify', () {
    expect(faker.helpers.slugify('kgj59tj% 9k6.gf&-'), 'kgj59tj-9k6.gf-');
  });
}
