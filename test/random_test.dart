import 'package:fakedart/src/faker.dart';
import 'package:test/test.dart';

void main() {
  test('Max = 10', () {
    final random = Faker().random;

    final c = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

    for (var i = 0; i < 100; i++) {
      c[random.nextInt(10)]++;
    }

    var sum = 0;

    for (var i = 0; i < c.length; i++) {
      expect(c[i], isNonZero);
      sum += c[i];
    }

    expect(sum, 100);
  });

  test('Min = 4 and Max = 8', () {
    final random = Faker().random;

    final c = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

    for (var i = 0; i < 100; i++) {
      c[random.nextInt(8, 4)]++;
    }

    var sum = 0;

    for (var i = 4; i < 8; i++) {
      expect(c[i], isNonZero);
      sum += c[i];
    }

    expect(sum, 100);
  });

  test('Char', () {
    final random = Faker().random;

    final c = {'a': 0, 'b': 0, 'c': 0};

    for (var i = 0; i < 100; i++) {
      final n = random.char('abc');
      c[n]++;
    }

    expect(c['a'], isNonZero);
    expect(c['b'], isNonZero);
    expect(c['c'], isNonZero);
  });

  test('List', () {
    final random = Faker().random;

    final c = [0, 0];

    for (var i = 0; i < 100; i++) {
      final n = random.list(const [0, 1]);
      c[n]++;
    }

    expect(c[0], isNonZero);
    expect(c[1], isNonZero);
  });
}
