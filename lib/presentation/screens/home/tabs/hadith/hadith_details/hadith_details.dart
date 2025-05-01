import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/models/hadith.dart';
import '../../../../../../core/resources/asset_manager.dart';
import '../../../../../../core/resources/colors_manager.dart';

class HadithDetails extends StatefulWidget {
  const HadithDetails({super.key, required this.hadith});
  final HadithModel hadith;

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hadith${widget.hadith.index + 1}"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    AssetManager.leftOfQuranDetails,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.hadith.title,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: ColorsManager.gold,
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    AssetManager.rightOfQuranDetails,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  widget.hadith.content,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: ColorsManager.gold,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Image.asset(
        AssetManager.quranDetailsBottomImage,
      ),
    );
  }
}
