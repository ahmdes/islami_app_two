import 'package:flutter/material.dart';
import '../../core/resources/colors_manager.dart';

class ThemeManager {
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: ColorsManager.black,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: ColorsManager.gold,
        ),
        backgroundColor: ColorsManager.black,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: ColorsManager.gold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorsManager.gold,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.black,
        type: BottomNavigationBarType.fixed,
      ));
}
