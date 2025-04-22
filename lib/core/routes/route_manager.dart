import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/Inro/intro.dart';
import 'package:islami_app_2/presentation/screens/home/home.dart';
import 'package:islami_app_2/presentation/screens/splash/splash_two.dart';
import '../../presentation/screens/splash/splash_one.dart';

class RouteManager {
   static const splashOne = "/";
   static const splashTwo="/splashTwo";
   static const intro = "/intro";
   static const home='/home';
   Map<String, WidgetBuilder> router = {
    splashOne: (_) => Splash(),
    splashTwo:(_)=>SplashTwo(),
     intro:(_)=>Intro(),
     home:(_)=>Home(),
  };
}
