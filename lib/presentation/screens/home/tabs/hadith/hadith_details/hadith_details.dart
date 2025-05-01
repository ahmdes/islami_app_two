import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/hadith/models/hadith.dart';
import '../../../../../../core/resources/asset_manager.dart';
import '../../../../../../core/resources/colors_manager.dart';

class HadithDetails extends StatefulWidget {
  const HadithDetails(
      {super.key, required this.hadith});
  final HadithModel hadith;

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}
class _HadithDetailsState extends State<HadithDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hadith${widget.hadith.index+1}"
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                    widget.hadith.title,
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
             Text(widget.hadith.content,textAlign:TextAlign.center,textDirection:TextDirection.rtl,style: TextStyle(
               color: ColorsManager.gold,
               fontWeight: FontWeight.w700,
               fontSize: 20,

             ),)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Image.asset(
        AssetManager.quran_details_bottom_image,
      ),
    );
  }

}


