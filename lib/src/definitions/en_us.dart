import 'package:fakedart/src/definitions/en.dart';
import 'package:fakedart/src/faker.dart';
import 'package:fakedart/src/locales/en_us.dart' as en_us;

class EnUsDefinitions extends EnDefinitions {
  EnUsDefinitions(Faker faker) : super(faker);

  @override
  List<int> postCodeByState(String state) {
    return en_us.postCodeByState[state?.toUpperCase()];
  }
}
