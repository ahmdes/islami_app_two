import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/constant_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/components/hadith.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/models/hadith.dart';

class Hadith extends StatefulWidget {
  const Hadith({super.key});

  @override
  State<Hadith> createState() => _HadithState();
}

class _HadithState extends State<Hadith> {
  // late HadithModel hadith;
  @override
  void initState() {
    super.initState();
    getHadithDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AssetManager.hadithBackGround,
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            width: 289,
            child: Image.asset(
              AssetManager.isalmiLogo,
            ),
          ),
          CarouselSlider(
            items: ConstantManager.hadithComponent,
            options: CarouselOptions(
              height: 518,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
            ),

          ),
        ],
      ),
    );
  }

  void addHadithComponents() {
    for (int i = 0; i < 50; i++) {
      ConstantManager.hadithComponent.add(
        HadithComponent(
          hadith: ConstantManager.hadith[i],
        ),
      );
    }
  }

  void getHadithDetails() async {
    for (int i = 0; i < 50; i++) {
      HadithModel hadith = HadithModel(title: "", content: "", index: 0);
      String filePath = "assets/files/hadith/h${i + 1}.txt";
      hadith.content = await rootBundle.loadString(filePath);
      List<String> hadithLines = hadith.content.trim().split("\n");
      hadith.title = hadithLines[0];
      hadithLines.removeAt(0);
      hadith.content = hadithLines.join();
      hadith.index = i;
      ConstantManager.hadith.add(hadith);
    }
    setState(() {
      addHadithComponents();
    });
  }
}
