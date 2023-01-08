import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/weather_bloc.dart';
import 'loading_indicator_widget.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({
    super.key,
  });

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBLoC, WeatherState>(
      builder: (BuildContext context, state) {
        return state.when(
            initial: () => const LoadingIndicator(),
            loading: () => const LoadingIndicator(),
            loaded: (cityWeather) => Column(
                  children: [
                    const SizedBox(height: 40),
                    Container(
                      height: 290,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        color: Color.fromRGBO(255, 255, 255, 0.85),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          right: 20,
                          left: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: cityWeather.icon,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cityWeather.temp,
                                      style: Theme.of(context).textTheme.headline4
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(cityWeather.typeWeather,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(cityWeather.weatherDescription,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  '${cityWeather.cityName}, ${cityWeather.country}',
                                  style: Theme.of(context).textTheme.headline4
                                ),
                                const Spacer(),
                                Text(cityWeather.date,
                                    style:
                                        Theme.of(context).textTheme.headline3),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 1,
                              decoration: const BoxDecoration(
                                color: Color(0xFFBFDCE8),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Min',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        cityWeather.tempMin,
                                        style: Theme.of(context).textTheme.headline4,
                                      
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 55,
                                    width: 1,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFBFDCE8),
                                    ),
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      Text(
                                        'Max',
                                        style: Theme.of(context).textTheme.headline3
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        cityWeather.tempMax,
                                        style: Theme.of(context).textTheme.headline4
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            error: ((erorText) => const LoadingIndicator()));
      },
    );
  }
}
