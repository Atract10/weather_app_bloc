import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/search_weather_bloc.dart';
import '../../bloc/weather_bloc.dart';
import 'empty_search_widget.dart';

class SearchResultsWidget extends StatefulWidget {
  final TextEditingController textController;
  const SearchResultsWidget({super.key, required this.textController});

  @override
  State<SearchResultsWidget> createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {
  @override
  void initState() {
    super.initState();
    context.read<SearchWeatherBLoC>().add(const SearchWeatherEvent.setup());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchWeatherBLoC, SearchWeatherState>(
        builder: (BuildContext context, state) {
      return state.when(
          initial: (erorText) => EmptySearchWidget(erorText: erorText),
          loaded: (cityList) => SizedBox(
                height: 200,
                child: Material(
                  elevation: 5,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      color: Colors.white,
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: cityList.length,
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 5,
                          top: 5,
                        ),
                        child: GestureDetector(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                              color: cityList[index].isOpened
                                  ? Theme.of(context).highlightColor
                                  : Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                  textAlign: TextAlign.left,
                                  '${cityList[index].cityName}, ${cityList[index].country}',
                                  style: cityList[index].isOpened
                                      ? Theme.of(context).textTheme.headline1
                                      : Theme.of(context).textTheme.headline6),
                            ),
                          ),
                          onTap: () {
                            FocusScope.of(context).unfocus();
                            cityList[index].isOpened =
                                !cityList[index].isOpened;
                            context.read<WeatherBLoC>().add(WeatherEvent.fetch(
                                city: cityList[index].cityName));
                            widget.textController.clear();
                            context
                                .read<SearchWeatherBLoC>()
                                .add(const SearchWeatherEvent.setup());
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          error: (erorText) => EmptySearchWidget(erorText: erorText),
          clear: () => const EmptySearchWidget(erorText: ''));
    });
  }
}
