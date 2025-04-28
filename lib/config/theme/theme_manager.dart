import 'package:flutter/material.dart';
import '../../core/resources/colors_manager.dart';

class ThemeManager{
  static ThemeData light=ThemeData(
    scaffoldBackgroundColor: ColorsManager.black,
    appBarTheme: AppBarTheme(
      color: ColorsManager.black,
      // titleTextStyle:
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.gold,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.black,
      type: BottomNavigationBarType.fixed,
    )
  );
}