import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/search_weather_bloc.dart';
import '../../bloc/weather_bloc.dart';
import '../../icons/custom_icons_icons.dart';

class SearchWidget extends StatefulWidget {
  final TextEditingController textController;

  const SearchWidget({super.key, required this.textController});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (input) {
        if (input.isNotEmpty) {
          context.read<WeatherBLoC>().add(WeatherEvent.fetch(city: input));
          FocusScope.of(context).unfocus();
          widget.textController.clear();
          context.read<SearchWeatherBLoC>().add(const SearchWeatherEvent.setup());
        } else {
          widget.textController.clear();
        }
      },
      onChanged: (input) => context
          .read<SearchWeatherBLoC>()
          .add(SearchWeatherEvent.fecth(city: input)),
      controller: widget.textController,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.headline2,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20.0),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: Theme.of(context).highlightColor,
            ),
            child: IconButton(
                icon: const Icon(
                  CustomIcons.search,
                  color: Colors.white,
                  size: 16,
                ),
                onPressed: () {
                  if (widget.textController.text.isNotEmpty) {
                    context.read<SearchWeatherBLoC>().add(
                        SearchWeatherEvent.fecth(
                            city: widget.textController.text));
                    FocusScope.of(context).unfocus();
                    widget.textController.clear();
                    context.read<SearchWeatherBLoC>().add(const SearchWeatherEvent.setup());
                  } else {
                    widget.textController.clear();
                    FocusScope.of(context).unfocus();
                  }
                }),
          ),
        ),
        hintText: 'Start typing to search...',
        hintStyle: Theme.of(context).textTheme.headline3,
        fillColor: Colors.white,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(width: 0, style: BorderStyle.none),
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
