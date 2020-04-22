import 'package:fakedart/src/constants.dart';
import 'package:fakedart/src/faker.dart';

class Git {
  final Faker faker;

  Git(this.faker);

  String branch() {
    final noun = faker.hacker.noun().replaceAll(' ', '-');
    final verb = faker.hacker.verb().replaceAll(' ', '-');
    return '$noun-$verb';
  }

  String commitEntry({
    bool merge,
  }) {
    var entry = 'commit ${commitSha()}\r\n';

    if (merge == true || (faker.random.nextInt(4, 0) == 0)) {
      entry += 'Merge: ${shortSha()} ${shortSha()}\r\n';
    }

    final firstName = faker.name.firstName();
    final lastName = faker.name.lastName();
    final email = faker.internet.email();
    final date = faker.date.recent();

    entry += 'Author: $firstName $lastName <$email>\r\n';
    entry += 'Date: $date\r\n';
    entry += '\r\n\xa0\xa0\xa0\xa0${commitMessage()}\r\n';

    return entry;
  }

  String commitMessage() {
    final adjective = faker.hacker.adjective().replaceAll(' ', '-');
    final noun = faker.hacker.noun().replaceAll(' ', '-');
    final verb = faker.hacker.verb().replaceAll(' ', '-');
    return '$verb $adjective $noun';
  }

  String commitSha() {
    final sb = StringBuffer();

    for (var i = 0; i < 40; i++) {
      sb.write(faker.random.char(hexChars));
    }

    return sb.toString();
  }

  String shortSha() {
    final sb = StringBuffer();

    for (var i = 0; i < 7; i++) {
      sb.write(faker.random.char(hexChars));
    }

    return sb.toString();
  }
}
