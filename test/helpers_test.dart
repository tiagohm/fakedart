import 'package:fakedart/fakedart.dart';
import 'package:test/test.dart';

void main() {
  final faker = Faker();

  test('Slugify', () {
    expect(faker.helpers.slugify('kgj59tj% 9k6.gf&-'), 'kgj59tj-9k6.gf-');
  });

  test('Replace By Regex', () {
    expect(faker.helpers.replaceByRegex('ABC#{1,3}DE#{1,1}F'),
        or(const ['ABC#DE#F', 'ABC##DE#F', 'ABC###DE#F']));
    expect(faker.helpers.replaceByRegex('ABC#{1}DEF'), 'ABC#DEF');
    expect(faker.helpers.replaceByRegex('ABC[1-3]DEF'),
        or(const ['ABC1DEF', 'ABC2DEF', 'ABC3DEF']));
  });
}

Matcher or(List values) => OrMatcher(values);

class OrMatcher extends Matcher {
  final List values;

  const OrMatcher(this.values);

  @override
  Description describe(Description description) =>
      description.add(values.join(' or '));

  @override
  bool matches(item, Map matchState) {
    return values.contains(item);
  }
}
