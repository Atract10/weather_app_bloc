// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/faq_list_bloc.dart';
import '../bloc/popular_cities_bloc.dart';
import '../bloc/weather_bloc.dart';
import 'widgets/faq_widget.dart';
import 'widgets/footer_widget.dart';
import 'widgets/popular_cities_widget.dart';
import 'widgets/search_results_widget.dart';
import 'widgets/search_widget.dart';
import 'widgets/weather_widget.dart';

class HomePageView extends StatefulWidget {
  final bool isDayNow;
  final String year;

  const HomePageView({super.key, required this.isDayNow, required this.year});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final TextEditingController textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<WeatherBLoC>().add(const WeatherEvent.setup());
    context.read<PopularCitiesBLoC>().add(const PopularCitiesEvent.setup());
    context.read<FaqListBLoC>().add(const FaqListEvent.setup());
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      appBar: null,
      body: GestureDetector(
        child: ListView(
          physics: const ScrollPhysics(parent: ClampingScrollPhysics()),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.zero,
          controller: _scrollController,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.isDayNow
                      ? 'assets/day_bg.jpg'
                      : 'assets/night_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    SearchWidget(
                      textController: textController,
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                const WeatherWidget(),
                                if (isKeyboard)
                                  SearchResultsWidget(
                                    textController: textController,
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            PopularCitiesWidget(scrollController: _scrollController),
            const FaqWidget(),
            FooterWidget(year: widget.year),
          ],
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
          textController.clear();
        },
      ),
    );
  }
}
