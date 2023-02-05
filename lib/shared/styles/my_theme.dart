import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightprimary,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme(
        primary: lightprimary,
        onPrimary: Colors.white,
        secondary: greenColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.grey.shade300,
        onSurface: colorBlack,
        background: backgroundColor,
        onBackground: Colors.white,
        brightness: Brightness.light,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: lightprimary,
          iconTheme: IconThemeData(color: Colors.white)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 20, color: lightprimary),
          subtitle2: TextStyle(fontSize: 20, color: greenColor)),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: lightprimary),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: lightprimary,
          unselectedItemColor: Colors.grey.shade400));
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme(
      primary: darkPrimary,
      onPrimary: Colors.white,
      secondary: yellowColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.grey.shade300,
      onSurface: colorBlack,
      background: Colors.transparent,
      onBackground: Colors.white,
      brightness: Brightness.dark,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: darkPrimary)),
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(fontSize: 20, color: yellowColor)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white),
  );
}
