import 'package:islami_app_2/core/resources/constant_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/models/sura.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  static void addSuraIndex(int suraIndex) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    List<String>mostRecentSuraIndexes=preferences.getStringList("mostRecentlyIndexes")??[];
    if(mostRecentSuraIndexes.contains("$suraIndex")) {
      mostRecentSuraIndexes.remove("$suraIndex");
      mostRecentSuraIndexes.add("$suraIndex");
    }
    else
      {
        mostRecentSuraIndexes.add("$suraIndex");
      }
    preferences.setStringList("mostRecentlyIndexes",mostRecentSuraIndexes);
  }

  static Future<List<SuraModel>>getMostRecentSura()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    List<String>mostRecentSurasIndex=preferences.getStringList("mostRecentlyIndexes")??[];
    List<SuraModel>mostRecentlySuras=[];
    for(int i=0;i<mostRecentSurasIndex.length;i++)
      {
        int suraIndex=int.parse(mostRecentSurasIndex[i]);
        mostRecentlySuras.add(ConstantManager.surasList[suraIndex]);
      }
    return mostRecentlySuras.reversed.toList();
  }
}
