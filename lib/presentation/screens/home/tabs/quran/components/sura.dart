import 'package:flutter/cupertino.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';

import '../models/sura.dart';

class SuraComponent extends StatelessWidget {
  const SuraComponent({super.key,required this.sura});
  final SuraModel sura;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 283,
      height: 150,
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(sura.enSuraName,style: TextStyle(
                color: ColorsManager.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),),
              Text(sura.arSuraName,style: TextStyle(
                color: ColorsManager.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),),
              Text("${sura.numberOfVerses} Verses",style: TextStyle(
                color: ColorsManager.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),),

            ],
          ),
          Image.asset(AssetManager.readingAndQuran,color: ColorsManager.black,)
        ],
      ),
    );
  }
}
