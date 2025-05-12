import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/components/sura.dart';
import '../../../../../../core/resources/constant_manager.dart';

class MostRecentlyList extends StatelessWidget {
  const MostRecentlyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ConstantManager.sura.length,
          itemBuilder: (context, index) {
            return SuraComponent(sura: ConstantManager.sura[index]);
          }),
    );
  }
}