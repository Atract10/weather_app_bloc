import 'package:flutter/material.dart';

class FooterWidget extends StatefulWidget {
  final String year;
  const FooterWidget({super.key, required this.year});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(247, 247, 247, 0.85),
      ),
      child: Center(
        child: Text('Illia Halushkin - ${widget.year}',
            style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
