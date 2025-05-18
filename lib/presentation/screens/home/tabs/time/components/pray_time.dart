import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/time/models/pray_time_d_m.dart';
class  PrayTime extends StatelessWidget {
  const PrayTime({super.key,required this.prayTimeDM});
  final PrayTimeDM prayTimeDM;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter, colors: [ColorsManager.black,ColorsManager.blackKaramel])
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(prayTimeDM.nameOfPray,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: ColorsManager.white,
          ),),
          Text(prayTimeDM.timeOfPray,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 32,
            color: ColorsManager.white,
          ),),
          Text(prayTimeDM.amOrPm,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: ColorsManager.white,
          ),),
        ],
      ),
    );
  }
}
