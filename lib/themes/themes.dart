import 'package:flutter/material.dart';

mixin CustomTheme implements ThemeData {
  static ThemeData get customTheme {
    return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(1.5, 1.5),
                blurRadius: 5,
                color: Colors.black,
              ),
            ],
          ),
        ));
  }
}
