import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/models/city_model.dart';
import '../data/repositories/weather_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'search_weather_bloc.freezed.dart';

@freezed
abstract class SearchWeatherEvent with _$SearchWeatherEvent {
  const SearchWeatherEvent._();

  const factory SearchWeatherEvent.fecth({required String city}) =
      _FecthSearchWeatherEvent;
  const factory SearchWeatherEvent.setup() = _SetupSearchWeatherEvent;
}

@freezed
abstract class SearchWeatherState with _$SearchWeatherState {
  const SearchWeatherState._();

  const factory SearchWeatherState.initial({required String erorText}) =
      _InitialSearchWeatherState;
  const factory SearchWeatherState.loaded(
      {required List<CityUIModel> cityList}) = _LoadedSearchWeatherState;
  const factory SearchWeatherState.error({required String erorText}) =
      _ErrorlSearchWeatherState;
  const factory SearchWeatherState.clear() = _ClearSearchWeatherState;
}

EventTransformer<E> debounceDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.debounce(duration), mapper);
  };
}

class SearchWeatherBLoC extends Bloc<SearchWeatherEvent, SearchWeatherState> {
  SearchWeatherBLoC({final WeatherRepo? weatherRepo})
      : _weatherRepo = weatherRepo,
        super(const _ErrorlSearchWeatherState(
            erorText:
                'City not found, please try to change your search query')) {
    on<SearchWeatherEvent>(
      (event, emitter) => event.map<Future<void>>(
        fecth: (event) => _fecth(event, emitter),
        setup: (event) => _setup(event, emitter),
      ),
      transformer: debounceDroppable(
        const Duration(milliseconds: 500),
      ),
    );
  }

  final WeatherRepo? _weatherRepo;

  Future<void> _fecth(_FecthSearchWeatherEvent event,
      Emitter<SearchWeatherState> emitter) async {
    try {
      final cityList = await _weatherRepo!.getCities(event.city);
      final List<CityUIModel> cityListUI = [];
      for (var e in cityList) {
        cityListUI.add(CityUIModel.makeViewModel(e));
      }
      emitter(SearchWeatherState.loaded(cityList: cityListUI));
    } on Object catch (_) {
      emitter(const SearchWeatherState.error(
          erorText: 'City not found, please try to change your search query'));
    }
  }
}

Future<void> _setup(
    _SetupSearchWeatherEvent event, Emitter<SearchWeatherState> emitter) async {
  emitter(const SearchWeatherState.clear());
}

class CityUIModel {
  bool isOpened;
  final String cityName;
  final String country;

  factory CityUIModel.makeViewModel(CityModel city) {
    var cityName = city.name;
    var country = city.sys.country;
    var isOpen = false;
    return CityUIModel(cityName, country, isOpen);
  }

  CityUIModel(this.cityName, this.country, this.isOpened);
}
