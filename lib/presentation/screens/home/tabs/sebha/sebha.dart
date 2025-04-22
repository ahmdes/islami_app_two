import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  final double radius = 120;
  int indexZekr = 0;
  List<String> zekrWord = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "أستغفر الله",
    "لا اله الا الله",
  ];
  int countOfTasbeeh = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetManager.sebhaBG), fit: BoxFit.cover),
        gradient: LinearGradient(
          colors: [
            ColorsManager.black,
            ColorsManager.blackWithObacity70,
            Colors.black12,
            Colors.white12,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 291,
            height: 171,
            child: Image.asset(AssetManager.isalmiLogo),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: ColorsManager.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          buildSebha(),
        ],
      ),
    );
  }

  SizedBox buildSebha() {
    return SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Container(
                height: 86,
                width: 73,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetManager.headOfSebha),
                        fit: BoxFit.cover)),
                // child: Image.asset(AssetManager.headOfSebha),
              ),
              SizedBox(
                height: 100,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  for (int i = 0; i < countOfTasbeeh; i++)
                    Transform.translate(
                      offset: Offset(
                        (radius + 30) * cos(2 * pi * i / 30),
                        (radius + 30) * sin(2 * pi * i / 30),
                      ),
                      child: Image.asset(AssetManager.elementOfSebha),
                    ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          countOfTasbeeh++;
                          setState(() {
                            if (countOfTasbeeh == 31) {
                              countOfTasbeeh = 0;

                              if (indexZekr < zekrWord.length - 1) {
                                indexZekr++;
                              } else {
                                indexZekr = 0;
                              }
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: Text(
                          zekrWord[indexZekr],
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 36,
                            color: ColorsManager.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "$countOfTasbeeh",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: ColorsManager.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
  }
}
