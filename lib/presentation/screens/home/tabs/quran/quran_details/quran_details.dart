import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/models/sura.dart';
import '../../../../../../core/resources/asset_manager.dart';
import '../../../../../../core/resources/colors_manager.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails(
      {super.key, required this.sura, required this.indexOfSura});
  final SuraModel sura;
  final int indexOfSura;

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}
class _QuranDetailsState extends State<QuranDetails> {
  String fileContent="";
  @override
  Widget build(BuildContext context) {
    if(fileContent.isEmpty) {
      loadSuraContent(widget.indexOfSura+1);
    }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorsManager.gold,
        ),
        title: Text(
          widget.sura.enSuraName,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: ColorsManager.gold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Image.asset(
                  AssetManager.leftOfQuranDetails,
                ),
                Spacer(
                  flex: 7,
                ),
                Text(
                  widget.sura.arSuraName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ColorsManager.gold,
                  ),
                ),
                Spacer(
                  flex: 7,
                ),
                Image.asset(
                  AssetManager.rightOfQuranDetails,
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            fileContent.isEmpty?CircularProgressIndicator():Text(fileContent,style: TextStyle(
              color: ColorsManager.gold,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        // Image.asset(name)
      ],),
    );
  }

  void loadSuraContent(int index)async
  {
    String filePath="assets/files/Suras/$index.txt";
    fileContent= await rootBundle.loadString(filePath);
    List<String>suraLines=fileContent.trim().split("\n");
    for(int i=0;i<suraLines.length;i++)
      {
        suraLines[i]+="[${i+1}]";
      }
    fileContent=suraLines.join();
    setState(() {
    });
  }
}
