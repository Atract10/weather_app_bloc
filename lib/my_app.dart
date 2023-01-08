// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/bloc/popular_cities_bloc.dart';

import 'bloc/faq_list_bloc.dart';
import 'bloc/search_weather_bloc.dart';
import 'bloc/weather_bloc.dart';
import 'data/date_manager.dart';
import 'data/repositories/faq_list_repo.dart';
import 'data/repositories/popular_cities_repo.dart';
import 'data/repositories/weather_repo.dart';
import 'ui/home_page.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final weatherRepo = WeatherRepo();
  final faqListRepo = FaqListRepo();
  final popularCitiesRepo = PopularCitiesRepo();
  final dateManager = DateManager();

  @override
  Widget build(BuildContext context) {
    String year = dateManager.year;
    bool isDayNow = dateManager.isDay();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeatherBLoC(weatherRepo: weatherRepo),
        ),
        BlocProvider(
          create: (context) => SearchWeatherBLoC(weatherRepo: weatherRepo),
        ),
        BlocProvider(
            create: ((context) => FaqListBLoC(faqListRepo: faqListRepo))),
        BlocProvider(
            create: ((context) =>
                PopularCitiesBLoC(popularCitiesRepo: popularCitiesRepo))),
      ],
      child: MaterialApp(
        title: 'WeatherApp',
        themeMode: isDayNow ? ThemeMode.light : ThemeMode.dark,
        theme: ThemeData(
          highlightColor: const Color(0xFF90CAF9),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white),
            headline2: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            headline3: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9E9E9E)),
            headline4: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black),
            headline5: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            headline6: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        darkTheme: ThemeData(
          highlightColor: const Color(0xFF2A344B),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white),
            headline2: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            headline3: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF9E9E9E)),
            headline4: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black),
            headline5: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            headline6: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            
          ),
        ),
        home: HomePageView(isDayNow: isDayNow, year: year),
      ),
    );
  }
}


// primaryColorDark: const Color(0xFF2A344B),
//           primaryColorLight: const Color(0xFF90CAF9),