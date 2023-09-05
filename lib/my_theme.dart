import 'package:flutter/material.dart';

class MyTheme {
  /// colors , light theme , dark
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whiteColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryLight,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation:  0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: blackColor
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: whiteColor,
    )
  );
}