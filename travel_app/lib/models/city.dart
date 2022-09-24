import 'place.dart';

class City {
  late String cityName;
  late String cityImage;
  late String cityInfo;
  late List<Place> popularplaces;

  City({
    required this.cityName,
    required this.cityImage,
    required this.cityInfo,
    required this.popularplaces,
  });
}