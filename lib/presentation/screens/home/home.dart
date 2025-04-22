import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/hadith.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/quran.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/sebha/sebha.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/time/time.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/radio/radio.dart'
    as my_radio;

import '../../../core/resources/asset_manager.dart';
import '../../../core/resources/colors_manager.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabs = [
    Quran(),
    Hadith(),
    Sebha(),
    my_radio.Radio(),
    Time(),
  ];
  List<BottomNavigationBarItem> items = [];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        ColorsManager.black,
        ColorsManager.blackWithObacity70,
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: tabs[selectedIndex],
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildBottomNavigationBar(){
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: buildIconOfBottomBar(0, AssetManager.quran),
          label: "Quran",
        ),
        BottomNavigationBarItem(
            icon: buildIconOfBottomBar(1, AssetManager.hadith),
            label: "Hadith"),
        BottomNavigationBarItem(
            icon: buildIconOfBottomBar(2, AssetManager.sebha),
            label: "Sebha"),
        BottomNavigationBarItem(
            icon: buildIconOfBottomBar(3, AssetManager.radio),
            label: "Radio"),
        BottomNavigationBarItem(
            icon: buildIconOfBottomBar(4, AssetManager.time),
            label: "Time"),
      ],
    );
  }

  Widget buildIconOfBottomBar(int index, String assetImage) {
    return IconButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        icon: selectedIndex == index
            ? Container(
                height: 35,
                width: 60,
                decoration: BoxDecoration(
                  color: ColorsManager.blackWithObacity70,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ImageIcon(
                  AssetImage(assetImage),
                ),
              )
            : ImageIcon(
                AssetImage(assetImage),
              ));
  }
}
