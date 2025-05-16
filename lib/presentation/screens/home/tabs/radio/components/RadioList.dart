import 'package:flutter/material.dart';

import '../../../../../../core/resources/asset_manager.dart';
import '../../../../../../core/resources/colors_manager.dart';

class RadioList extends StatelessWidget {
  const RadioList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: 360,
      decoration: BoxDecoration(
        color: ColorsManager.gold,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            AssetManager.quranDetailsBottomImage,
          ),
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Radio Ibrahim Al-Akdar",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                  color: ColorsManager.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.volume_down_rounded,
                  size: 40,
                  color: ColorsManager.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
