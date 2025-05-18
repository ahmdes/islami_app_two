import 'package:flutter/cupertino.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/time/models/azkar_d_m.dart';

class Azkar extends StatelessWidget {
  const Azkar({super.key, required this.azkarDM});
  final AzkarDM azkarDM;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 160,
      decoration: BoxDecoration(
        color: ColorsManager.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: ColorsManager.gold,
          width: 3,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(azkarDM.image),
          Text(
            azkarDM.nameOfZekr,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: ColorsManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
