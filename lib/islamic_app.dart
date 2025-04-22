import 'package:flutter/material.dart';
import 'package:islami_app_2/config/theme/theme_manager.dart';
import 'core/routes/route_manager.dart';
class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouteManager().router,
      theme: ThemeManager.light,
    );
  }
}