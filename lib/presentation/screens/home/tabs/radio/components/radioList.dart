import 'package:flutter/material.dart';
import '../../../../../../core/resources/asset_manager.dart';
import '../../../../../../core/resources/colors_manager.dart';
import '../model/radioDM.dart';

class RadioList extends StatefulWidget {
  const RadioList({
    super.key,
    required this.radio,
  });
  final RadioDM radio;
  @override
  State<RadioList> createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 12,
        right: 15,
      ),
      child: Container(
        height: 133,
        width: 360,
        decoration: BoxDecoration(
          color: ColorsManager.gold,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.radio.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Stack(
              children: [
                SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Image.asset(
                      widget.radio.backGroundImage,
                      color: ColorsManager.blackWithObacity20,
                    )),
                Positioned(
                  left: 150,
                  top: 20,
                  child: IconButton(
                    onPressed: () {
                      if (widget.radio.playOrStop == Icons.pause) {
                        widget.radio.playOrStop = Icons.play_arrow_rounded;
                        widget.radio.backGroundImage =
                            AssetManager.quranDetailsBottomImage;
                      } else {
                        widget.radio.playOrStop = Icons.pause;
                        widget.radio.backGroundImage = AssetManager.soundWave;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      widget.radio.playOrStop,
                      size: 50,
                      color: ColorsManager.black,
                    ),
                  ),
                ),
                Positioned(
                  left: 200,
                  top: 27,
                  child: IconButton(
                    onPressed: () {
                      if (widget.radio.volumeOfSound == Icons.volume_up_sharp) {
                        widget.radio.volumeOfSound = Icons.volume_off_rounded;
                      } else {
                        widget.radio.volumeOfSound = Icons.volume_up_sharp;
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      widget.radio.volumeOfSound,
                      size: 40,
                      color: ColorsManager.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
