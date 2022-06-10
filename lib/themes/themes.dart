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
          headline2: TextStyle(
              fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ));
  }
}
// ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     backgroundColor: Colors.grey[700],
//     accentColor: Colors.white,
//   );

//   static List<ThemeData> _appThemes = [
//     ///Theme 1
//     ThemeData(
//         textSelectionHandleColor: Colors.white,
//         selectedRowColor: Colors.green
// ),
//    ///Theme 2
//     ThemeData(
//         textSelectionHandleColor: Colors.white,
//         selectedRowColor: Colors.green
// ),
//    ///Theme 3
//     ThemeData(
//         textSelectionHandleColor: Colors.white,
//         selectedRowColor: Colors.green
// ),
// ]