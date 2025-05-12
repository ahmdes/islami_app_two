import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/models/sura.dart';
import '../../../../../../core/resources/asset_manager.dart';
import '../../../../../../core/resources/colors_manager.dart';
import 'components/sura_content.dart';

class QuranDetails extends StatefulWidget {
  const QuranDetails(
      {super.key, required this.sura, required this.indexOfSura});
  final SuraModel sura;
  final int indexOfSura;

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String fileContent = "";
  @override
  Widget build(BuildContext context) {
    if (fileContent.isEmpty) {
      loadSuraContent(widget.indexOfSura + 1);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.sura.enSuraName,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            fileContent.isEmpty
                ? CircularProgressIndicator()
                : Expanded(child: SingleChildScrollView(child: SuraContent(content:fileContent))),
          ],
        ),
      ),
      bottomNavigationBar: Image.asset(
        AssetManager.quranDetailsBottomImage,
      ),
    );
  }
  void loadSuraContent(int index) async {
    String filePath = "assets/files/Suras/$index.txt";
    fileContent = await rootBundle.loadString(filePath);
    List<String> suraLines = fileContent.trim().split("\n");
    for (int i = 0; i < suraLines.length; i++) {
      suraLines[i] += "[${i + 1}]";
    }
    fileContent = suraLines.join();
    setState(() {});
  }
}


