import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/core/resources/constant_manager.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/time/components/azkar.dart';
import 'package:islami_app_2/presentation/screens/home/tabs/time/models/azkar_d_m.dart';
import '../../../../../core/resources/asset_manager.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetManager.timeBackGround),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 171,
                width: 291,
                child: Image.asset(AssetManager.isalmiLogo),
              ),
              buildPrayTime(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Azkar(
                    azkarDM: AzkarDM(
                      image: AssetManager.eveningAzkar,
                      nameOfZekr: "Evening Azkar",
                    ),
                  ),
                  Azkar(
                    azkarDM: AzkarDM(
                      image: AssetManager.morningAzkar,
                      nameOfZekr: "Morning Azkar",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            top: 210, left: 52, child: Image.asset(AssetManager.vectorOne)),
        Positioned(
            top: 210, left: 273, child: Image.asset(AssetManager.vectorTwo)),
      ],
    );
  }

  Widget buildPrayTime() {
    return Container(
      height: 301,
      width: 360,
      decoration: BoxDecoration(
        color: ColorsManager.highKaramel,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "16 Jul,\n 2024",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: ColorsManager.white),
              ),
              Container(
                height: 90,
                width: 166,
                decoration: BoxDecoration(
                  color: ColorsManager.gold,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Pray Time",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsManager.highKaramel,
                      ),
                    ),
                    Text(
                      "Tuesday",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorsManager.black,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "09 Muh,\n     1446",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: ColorsManager.white),
              ),
            ],
          ),
          Container(
            height: 210,
            width: 360,
            decoration: BoxDecoration(
              color: ColorsManager.gold,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                CarouselSlider(
                  items: ConstantManager.prayTimesList,
                  options: CarouselOptions(
                   height: 162,
                    enlargeCenterPage: true,
                    viewportFraction: 0.4,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "Next Pray ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: ColorsManager.highKaramel,
                      ),
                    ),
                    Text(
                      "- 02:32",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: ColorsManager.black,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_off_rounded,
                        color: ColorsManager.black,
                        size: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
