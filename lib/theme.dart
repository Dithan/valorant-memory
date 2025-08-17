import 'package:flutter/material.dart';

class ValorantTheme {
  static const MaterialColor color = MaterialColor(
    _redValorantValue,
    <int, Color>{
      50: Color(0xFFFFDFE1),
      100: Color(0xFFFFC4C9),
      200: Color(0xFFFFA5AC),
      300: Color(0xFFFF8791),
      400: Color(0xFFFF5F6D),
      500: Color(_redValorantValue),
      600: Color(0xFFED2D3E),
      700: Color(0xFFBA0010),
      800: Color(0xFF83000B),
      900: Color(0xFF420006),
    },
  );
  static const int _redValorantValue = 0xFFFF4656;
  static const Color background = Color(0xFF0F1924);

  static ButtonStyle outlineButtonStyle({
    Color color = Colors.white,
    double padding = 24,
  }) {
    return OutlinedButton.styleFrom(
      foregroundColor: color,
      padding: EdgeInsets.symmetric(vertical: padding),
      side: BorderSide(color: color),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
    );
  }

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primarySwatch: color,
    primaryColor: color,
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'ValorantFont',
        ),
    outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonStyle()),
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontFamily: 'ValorantFont',
            fontSize: 25,
          ),
        ),
  );
}
