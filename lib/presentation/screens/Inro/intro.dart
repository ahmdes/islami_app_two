import 'package:flutter/material.dart';
import 'package:islami_app_2/core/routes/route_manager.dart';
import 'package:islami_app_2/presentation/screens/Inro/models/intro_model.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/asset_manager.dart';
import 'components/page_view_content.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int currentIndex = 0;
  PageController pageController = PageController();
  final List<PageViewComponents> pageContent = const [
    PageViewComponents(
      pageElements: IntroModel(
          image: AssetManager.torahebBecom,
          headerText: "Welcome To Islmi App",
          titleText: ""),
    ),
    PageViewComponents(
      pageElements: IntroModel(
          image: AssetManager.bigMosque,
          headerText: "Welcome To Islmi App",
          titleText: "We Are Very Excited To Have You In Our Community"),
    ),
    PageViewComponents(
      pageElements: IntroModel(
          image: AssetManager.readingAndQuran,
          headerText: "Reading the Quran",
          titleText: "Read, and your Lord is the Most Generous"),
    ),
    PageViewComponents(
      pageElements: IntroModel(
          image: AssetManager.bearish,
          headerText: "Bearish",
          titleText: "Praise the name of your Lord, the Most High"),
    ),
    PageViewComponents(
      pageElements: IntroModel(
          image: AssetManager.microphone,
          headerText: "Holy Quran Radio",
          titleText:
              "You can listen to the Holy Quran Radio through the application for free and easily"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetManager.isalmiLogo),
          Spacer(flex: 3),
          SizedBox(
            height: 500,
            width: double.infinity,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: pageContent.length,
              itemBuilder: (context, index) => pageContent[index],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentIndex > 0
                    ? FloatingActionButton(
                        backgroundColor: ColorsManager.black,
                        onPressed: () {
                          if (currentIndex > 0) {
                            pageController.animateToPage(currentIndex-1,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          }
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            color: ColorsManager.gold,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      )
                    : SizedBox(
                        width: 53,
                      ),
                Spacer(),
                for (int i = 0; i < pageContent.length; i++)
                  Icon(
                    Icons.circle,
                    color: i == currentIndex
                        ? ColorsManager.gold
                        : ColorsManager.romadi,
                  ),
                Spacer(),
                FloatingActionButton(
                  backgroundColor: ColorsManager.black,
                  onPressed: () {
                    if (currentIndex < pageContent.length - 1) {
                      pageController.animateToPage(
                        currentIndex+1,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                    if (currentIndex == pageContent.length-1) {
                      Navigator.pushNamed(context, RouteManager.home);
                    }
                  },
                  child: Text(
                    currentIndex == pageContent.length - 1 ? "finish" : "Next",
                    style: TextStyle(
                      color: ColorsManager.gold,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
