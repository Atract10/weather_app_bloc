import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/popular_city_model.dart';
import '../data/repositories/popular_cities_repo.dart';

part 'popular_cities_bloc.freezed.dart';

@freezed
abstract class PopularCitiesEvent with _$PopularCitiesEvent {
  const PopularCitiesEvent._();

  const factory PopularCitiesEvent.setup() = _SetupPopularCitiesEvent;
}

@freezed
abstract class PopularCitiesState with _$PopularCitiesState {
  const PopularCitiesState._();

  const factory PopularCitiesState.initial() = _InitialPopularCitiesState;
  const factory PopularCitiesState.loaded(
          {required List<PopularCityModel> popularCities}) =
      _LoadedPopularCitiesState;
}

class PopularCitiesBLoC extends Bloc<PopularCitiesEvent, PopularCitiesState> {
  PopularCitiesBLoC({required PopularCitiesRepo popularCitiesRepo})
      : _popularCitiesRepo = popularCitiesRepo,
        super(const _InitialPopularCitiesState()) {
    on<PopularCitiesEvent>(
      (event, emitter) => event.map<Future<void>>(
        setup: (event) => _setup(event, emitter),
      ),
    );
  }

  final PopularCitiesRepo _popularCitiesRepo;

  Future<void> _setup(_SetupPopularCitiesEvent event,
      Emitter<PopularCitiesState> emitter) async {
    emitter(const PopularCitiesState.initial());
    final popularCities = _popularCitiesRepo.getPopularCities();
    emitter(PopularCitiesState.loaded(popularCities: popularCities));
  }
}
