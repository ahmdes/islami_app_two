
import 'package:flutter/material.dart';
import 'package:islami_app_2/presentation/screens/Inro/models/intro_model.dart';
import '../../../../core/resources/colors_manager.dart';

class PageViewComponents extends StatelessWidget {
  const PageViewComponents({
    super.key,
    required this.pageElements,
  });
  final IntroModel pageElements;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 360,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pageElements.image),
              fit: BoxFit.fill,
            ),),
        ),
        Spacer(flex: 1,),
        Text(
          pageElements.headerText,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: ColorsManager.gold,
          ),
        ),
        Spacer(flex: 1,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,),
          child: Text(
            pageElements.titleText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: ColorsManager.gold,
            ),
          ),
        ),
      ],
    );
  }
}

