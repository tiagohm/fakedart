import 'package:fakedart/src/faker.dart';

class Image {
  final Faker faker;

  Image(this.faker);

  String avatar() {
    return faker.internet.avatar();
  }

  String imageUrl({
    int width = 640,
    int height = 480,
    String category,
    bool gray = false,
  }) {
    category = category == null ? '' : '/$category';
    final g = gray == true && category != null ? '/g' : '';
    return 'https://loremflickr.com$g/$width/$height$category';
  }

  // ignore: non_constant_identifier_names
  String abstract_({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'abstract');
  }

  String animals({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'animals');
  }

  String business({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'business');
  }

  String cats({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(width: width, height: height, gray: gray, category: 'cats');
  }

  String city({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(width: width, height: height, gray: gray, category: 'city');
  }

  String food({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(width: width, height: height, gray: gray, category: 'food');
  }

  String nightlife({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'nightlife');
  }

  String fashion({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'fashion');
  }

  String people({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'people');
  }

  String nature({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'nature');
  }

  String sports({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'sports');
  }

  String technics({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'technics');
  }

  String transport({
    int width = 640,
    int height = 480,
    bool gray = false,
  }) {
    return imageUrl(
        width: width, height: height, gray: gray, category: 'transport');
  }

  String dataUri({
    int width = 256,
    int height = 256,
    String color,
  }) {
    width ??= 256;
    height ??= 256;
    color ??= faker.internet.color();

    final svg =
        '<svg xmlns="http://www.w3.org/2000/svg" version="1.1" baseProfile="full" width="$width" height="$height"><rect width="100%" height="100%" fill="$color"/><text x="${width / 2}" y="${height / 2}" font-size="20" alignment-baseline="middle" text-anchor="middle" fill="white">$width x $height</text></svg>';
    const prefix = 'data:image/svg+xml;charset=UTF-8,';
    return prefix + Uri.encodeComponent(svg);
  }
}
