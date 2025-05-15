import 'package:flutter/material.dart';
import 'package:islami_app_2/core/prefs_manager/prefs_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/components/most_recent_component.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/models/sura.dart';

class MostRecentlyList extends StatefulWidget {
  MostRecentlyList({
    super.key,
  });

  @override
  State<MostRecentlyList> createState() => MostRecentlyListState();
}

class MostRecentlyListState extends State<MostRecentlyList> {
  List<SuraModel> mostRecentlySuras = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshMostRecentlySuras();
  }

  void refreshMostRecentlySuras() async {
    mostRecentlySuras = await PrefsManager.getMostRecentSura();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return mostRecentlySuras.isEmpty?Center(
      child: Text("There is not most recently suras list.",style: TextStyle(
        fontSize: 20,
        color: ColorsManager.gold,
      ),),
    ):SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mostRecentlySuras.length,
          itemBuilder: (context, index) {
            return MostRecentComponent(sura: mostRecentlySuras[index],);
          }),
    );
  }
}
