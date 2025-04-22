import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/quran/models/sura.dart';
class SurasList extends StatefulWidget {
  const SurasList({super.key,required this.sura,required this.indexOfSura});
  final SuraModel sura;
  final int indexOfSura;
  @override
  State<SurasList> createState() => _SurasListState();
}

class _SurasListState extends State<SurasList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                SizedBox(height: 80,width: 80,child: Image.asset(AssetManager.decorationOfSuraNumber)),
                Positioned(

                  top: 25,
                  left: widget.indexOfSura<=8?33:widget.indexOfSura<=98&&widget.indexOfSura>=9?28:22,
                  child: Text("${widget.indexOfSura+1}",style: TextStyle(
                    color: ColorsManager.white,
                    fontSize:20 ,
                    fontWeight:FontWeight.w700,
                  ),),
                ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
              children: [
                Text(widget.sura.enSuraName,style: TextStyle(
                  color: ColorsManager.white,
                  fontSize:20 ,
                  fontWeight: FontWeight.w700,
                ),),
                SizedBox(
                  height: 8,
                ),
                Text("${widget.sura.numberOfVerses} Verses",style: TextStyle(
                 color: ColorsManager.white,
                 fontWeight:FontWeight.w700 ,
                 fontSize:14 ,
                ),),
              ],
            ),
            Spacer(flex: 1,),
            Text(widget.sura.arSuraName,style: TextStyle(
              color: ColorsManager.white,
              fontWeight: FontWeight.w700,
              fontSize:20,
            ),),
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Divider(
            thickness: 2,
            endIndent: 20,
            indent: 20,
          ),
        ),
      ],
    );
  }
}
