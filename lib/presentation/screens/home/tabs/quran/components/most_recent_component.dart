import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/quran_details/quran_details.dart';
import '../../../../../../core/resources/asset_manager.dart';
import '../models/sura.dart';
import 'most_recently_list.dart';

class MostRecentComponent extends StatelessWidget {
  const MostRecentComponent({super.key, required this.sura,});
  final SuraModel sura;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuranDetails(sura: sura, indexOfSura: sura.indexOfSura,)
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
        ),
        child: Container(
          width: 290,
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
                    Text(
                      sura.enSuraName,
                      style: TextStyle(
                        color: ColorsManager.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      sura.arSuraName,
                      style: TextStyle(
                        color: ColorsManager.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "${sura.numberOfVerses} Verses",
                      style: TextStyle(
                        color: ColorsManager.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 140,
                child: Image.asset(
                  AssetManager.quranSura,
                  color: ColorsManager.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
