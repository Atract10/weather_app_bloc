import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/bloc/popular_cities_bloc.dart';
import 'package:weather_app_bloc/bloc/weather_bloc.dart';
import 'loading_indicator_widget.dart';

class PopularCitiesWidget extends StatefulWidget {
  final ScrollController scrollController;
  const PopularCitiesWidget({super.key, required this.scrollController});

  @override
  State<PopularCitiesWidget> createState() => _PopularCitiesWidgetState();
}

class _PopularCitiesWidgetState extends State<PopularCitiesWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularCitiesBLoC, PopularCitiesState>(
        builder: (BuildContext context, state) {
      return state.when(
        initial: () => const LoadingIndicator(),
        loaded: (popularCities) => Padding(
          padding:
              const EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Text('Check the weather in most popular cities in the world',
                  style: Theme.of(context).textTheme.headline5),
              const SizedBox(height: 35),
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: popularCities.length,
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage(popularCities[index].assetImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 14),
                      child: Column(
                        children: [
                          const Spacer(),
                          Container(
                            height: 36,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: TextButton(
                              child: Text(
                                popularCities[index].name,
                                style:
                                    Theme.of(context).textTheme.headline6,
                              ),
                              onPressed: () {
                                context.read<WeatherBLoC>().add(
                                    WeatherEvent.fetch(
                                        city: popularCities[index].name));
                                widget.scrollController.animateTo(
                                  0.0,
                                  curve: Curves.easeOut,
                                  duration: const Duration(milliseconds: 300),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      );
    });
  }
}
