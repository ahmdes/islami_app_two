import 'package:shared_preferences/shared_preferences.dart';

class PrefsManager {
  void addSuraIndex(int suraIndex) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    List<String>mostRecentSuraIndexes=preferences.getStringList("mostRecentlyIndexes")??[];
    preferences.setStringList("mostRecentlyIndexes",mostRecentSuraIndexes);

  }
}
