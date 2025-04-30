import 'package:flutter/material.dart';
import '../../../../../../../core/resources/colors_manager.dart';
class SuraContent extends StatelessWidget {
  const SuraContent({super.key,required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: ColorsManager.gold,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    );
  }
}