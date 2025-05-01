import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/hadith_details/hadith_details.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/models/hadith.dart';
import '../../../../../../core/resources/asset_manager.dart';

class HadithComponent extends StatelessWidget {
  const HadithComponent({super.key, required this.hadith});

  final HadithModel hadith;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HadithDetails(hadith: hadith,),),);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: ColorsManager.gold,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                              AssetManager.leftOfQuranDetails,
                              color: ColorsManager.black,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                              hadith.title,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: ColorsManager.black,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              AssetManager.rightOfQuranDetails,
                              color: ColorsManager.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 380,
                  width: 265,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AssetManager.hadith_card_back_ground,
                      ),
                      fit: BoxFit.cover,
                      opacity: 3,
                    ),
                  ),
                  child: hadith.content.isEmpty
                      ? CircularProgressIndicator()
                      : Text(
                          hadith.content,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
