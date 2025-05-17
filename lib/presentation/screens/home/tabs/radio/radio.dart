import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/core/resources/constant_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/radio/model/radioDM.dart';

import '../../../../../core/resources/asset_manager.dart';
import 'components/radioList.dart';

class Radio extends StatefulWidget {
  const Radio({super.key});

  @override
  State<Radio> createState() => _RadioState();
}

class _RadioState extends State<Radio> {
  late Color selectedColor = ColorsManager.gold,
      unSelectedColor = ColorsManager.transparent,
      backGroundOfRadio = ColorsManager.gold,
      backGroundOfReciters = ColorsManager.blackWithObacity70,
      colorOfTextOfSelected = ColorsManager.black,
      colorOfTextOfUnSelected = ColorsManager.white,
      colorOfRadioWord = ColorsManager.black,
      colorOfRecitersWord = ColorsManager.white;
      List<RadioDM>shownList=ConstantManager.radioList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetManager.radioBackGround), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 171,
            width: 291,
            child: Image.asset(AssetManager.isalmiLogo),
          ),
          Container(
            height: 40,
            width: 360,
            decoration: BoxDecoration(
              color: ColorsManager.blackWithObacity70,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    backGroundOfRadio = selectedColor;
                    backGroundOfReciters = unSelectedColor;
                    colorOfRadioWord = colorOfTextOfSelected;
                    colorOfRecitersWord = colorOfTextOfUnSelected;
                    shownList=ConstantManager.radioList;

                    setState(() {});
                  },
                  child: Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      color: backGroundOfRadio,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Radio",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: colorOfRadioWord,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    backGroundOfReciters = selectedColor;
                    backGroundOfRadio = unSelectedColor;
                    colorOfRadioWord = colorOfTextOfUnSelected;
                    colorOfRecitersWord = colorOfTextOfSelected;
                    shownList=ConstantManager.recitersList;
                    setState(() {});
                  },
                  child: Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      color: backGroundOfReciters,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Reciters",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: colorOfRecitersWord,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return RadioList(
                  radio: shownList[index],
                );
              },
              itemCount: shownList.length,
            ),
          ),
        ],
      ),
    );
  }
}
