import 'package:basic_utils/basic_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../data/models/city_model.dart';
import '../data/repositories/weather_repo.dart';

part 'weather_bloc.freezed.dart';

@freezed
abstract class WeatherEvent with _$WeatherEvent {
  const WeatherEvent._();

  const factory WeatherEvent.setup() = _SetupWeatherEvent;

  const factory WeatherEvent.fetch({required String city}) = _FetchWeatherEvent;
}

@freezed
abstract class WeatherState with _$WeatherState {
  const WeatherState._();

  const factory WeatherState.initial() = _InitialWeatherState;
  const factory WeatherState.loading() = _LoadingWeatherState;
  const factory WeatherState.loaded({required CityWeatherUI cityWeather}) =
      _LoadedWeatherState;
  const factory WeatherState.error({required String erorText}) =
      _ErrorWeatherState;
}

class WeatherBLoC extends Bloc<WeatherEvent, WeatherState> {
  WeatherBLoC({
    required final WeatherRepo weatherRepo,
  })  : _weatherRepo = weatherRepo,
        super(const _InitialWeatherState()) {
    on<WeatherEvent>(
      (event, emitter) => event.map<Future<void>>(
        setup: (event) => _setup(event, emitter),
        fetch: (event) => _fetch(event, emitter),
      ),
    );
  }

  final WeatherRepo _weatherRepo;
  CityWeatherUI? cityWeatherUIState;

  Future<void> _setup(
      _SetupWeatherEvent event, Emitter<WeatherState> emitter) async {
    try {
      emitter(const WeatherState.loading());
      final city = await _weatherRepo.getInitCity();
      final cityWeather = await _weatherRepo.getWeather(city);
      final cityWeatherUI = CityWeatherUI.makeViewModel(cityWeather);

      emitter(WeatherState.loaded(cityWeather: cityWeatherUI));
    } on Object catch (_) {}
  }

  Future<void> _fetch(
      _FetchWeatherEvent event, Emitter<WeatherState> emitter) async {
    try {
      final cityWeather = await _weatherRepo.getWeather(event.city);
      final cityWeatherUI = CityWeatherUI.makeViewModel(cityWeather);
      emitter(WeatherState.loaded(cityWeather: cityWeatherUI));
    } on Object catch (_) {}
  }
}

class CityWeatherUI {
  final String cityName;
  final String country;
  final String icon;
  final String typeWeather;
  final String weatherDescription;
  final String date;
  final String temp;
  final String tempMax;
  final String tempMin;

  factory CityWeatherUI.makeViewModel(CityModel city) {
    var name = city.name;
    var country = city.sys.country;
    var icon =
        'http://openweathermap.org/img/wn/${city.weather.first.icon}@2x.png';
    var typeWeath = city.weather.first.main;
    var description = StringUtils.capitalize(city.weather.first.description);
    var todayDate = DateFormat('d MMMM y').format(DateTime.now());
    var temperature = makeTemperature(city.main.temp);
    var temperatureMax = makeTemperature(city.main.temp_max);
    var temperatureMin = makeTemperature(city.main.temp_min);
    return CityWeatherUI(name, country, icon, typeWeath, description, todayDate,
        temperature, temperatureMax, temperatureMin);
  }

  CityWeatherUI(
      this.cityName,
      this.country,
      this.icon,
      this.typeWeather,
      this.weatherDescription,
      this.date,
      this.temp,
      this.tempMax,
      this.tempMin);
}

String makeTemperature(double temp) {
  var temperature = temp.floor();
  var result = '';
  if (temperature > 0) {
    result = '+$temperature';
  } else {
    result = '$temperature';
  }
  return '$result°C';
}
