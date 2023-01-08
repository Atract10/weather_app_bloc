import 'package:dio/dio.dart';
import '../models/city_model.dart';
import '../models/init_city_model.dart';
import '../models/list_cities_model.dart';

class WeatherRepo {
  final apiClient = Dio();

  Future<CityModel> getWeather(String name) async {
    var url =
        'https://api.openweathermap.org/data/2.5/weather?q=$name&appid=8ec76712582916ec7351eb69ee0c75a8&units=metric';
    final request = await apiClient.get(url);
    final json = request.data;
    final data = CityModel.fromJson(json);
    return data;
  }

  Future<List<CityModel>> getCities(String name) async {
    var cityName = name;
      var url =
          'https://api.openweathermap.org/data/2.5/find?q=$cityName&appid=8ec76712582916ec7351eb69ee0c75a8';
      final request = await apiClient.get(url);
      final json = request.data;
      final data = ListCityModel.fromJson(json);
      final listCities = data.list;
      return listCities;
  }

  Future<String> getInitCity() async {
    const url = 'http://ip-api.com/json/?fields=61439';
    final request = await apiClient.get(url);
    final json = request.data;
    final data = InitCityModel.fromJson(json);
    final city = data.city;
    return city;
  }
}
