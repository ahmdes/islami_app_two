import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/constant_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/components/sura.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/components/suras_list.dart';
import '../../../../../core/resources/colors_manager.dart';
import '../../../../../core/resources/asset_manager.dart';

class Quran extends StatefulWidget {
  const Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetManager.quranBG), fit: BoxFit.cover),
        gradient: LinearGradient(colors: [
          ColorsManager.black,
          ColorsManager.blackWithObacity70,
        ]),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: SizedBox(
                  width: 291,
                  height: 171,
                  child: Image.asset(AssetManager.isalmiLogo),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildSearchField(),
              SizedBox(
                height: 20,
              ),
              Text(
                " Most Recently",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ConstantManager.sura.length,
                    itemBuilder: (context, index) {
                      return SuraComponent(sura: ConstantManager.sura[index]);
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              /*
              // هنا أنا هستخدم ال for loop , لأني انا محتاج حاجه
              not Scrollable
              وف نفس الوقت تكون بتبنيلي العناصر كلها مرة واحدة
              */

              for (int i = 0; i < ConstantManager.surasList.length; i++)
                SurasList(
                  sura: ConstantManager.surasList[i],
                  indexOfSura: i,
                ),
              // Expanded(
              //   child: ListView.builder(
              //     physics: NeverScrollableScrollPhysics(),
              //       shrinkWrap: true,
              //       itemCount:sura.length,itemBuilder: (context,index){
              //     return SurasList(sura: sura[index],);
              //   }),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSearchField() {
    return TextFormField(
      cursorColor: ColorsManager.gold,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: ColorsManager.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.blackWithObacity70,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorsManager.gold,
              width: 1.0,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: ColorsManager.gold,
              width: 1.0,
            )),
        label: Text(
          "   Sura Name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: ColorsManager.white,
          ),
        ),
      ),
    );
  }
}
