import 'package:flutter/cupertino.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';

import '../models/sura.dart';

class SuraComponent extends StatelessWidget {
  const SuraComponent({super.key,required this.sura});
  final SuraModel sura;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5,),
      child: Container(
        width: 283,
        height: 150,
        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(sura.enSuraName,style: TextStyle(
                    color: ColorsManager.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),),
                  Spacer(),
                  Text(sura.arSuraName,style: TextStyle(
                    color: ColorsManager.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),),
                  Spacer(),
                  Text("${sura.numberOfVerses} Verses",style: TextStyle(
                    color: ColorsManager.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),),
                  Spacer(flex: 2,),
                ],
              ),
            ),
            SizedBox(width:160,child: Image.asset(sura.image,color: ColorsManager.black,))
          ],
        ),
      ),
    );
  }
}
