import '../models/popular_city_model.dart';

class PopularCitiesRepo {

  List<PopularCityModel> getPopularCities() {
    final List<PopularCityModel> popularCities = [];
    popularCities
        .add(PopularCityModel(name: 'New York', assetImage: 'assets/ny.jpg'));
    popularCities
        .add(PopularCityModel(name: 'London', assetImage: 'assets/london.jpg'));
    popularCities
        .add(PopularCityModel(name: 'Dubai', assetImage: 'assets/dubai.jpg'));
    popularCities
        .add(PopularCityModel(name: 'Paris', assetImage: 'assets/paris.jpg'));
        return popularCities;
  }
}