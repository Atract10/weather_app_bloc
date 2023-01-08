import 'package:flutter/material.dart';

class EmptySearchWidget extends StatelessWidget {
  const EmptySearchWidget({super.key, required this.erorText});
  final String erorText;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      shadowColor: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(30.0),
      ),
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(erorText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3),
        ),
      ),
    );
  }
}
