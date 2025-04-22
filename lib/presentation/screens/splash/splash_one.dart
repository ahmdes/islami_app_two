
import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/core/routes/route_manager.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }
  void navigate()
  {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushNamed(context,RouteManager.splashTwo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetManager.sramicImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: [
          Positioned(
            top: 0,
            child: Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 157,
                      width: 270,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AssetManager.mosqueImage
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 313,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AssetManager.lampImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              height: 187,
              width: 87,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetManager.flowerOneImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 330,
            left: 110,
            child: Column(
              children: [
                Container(
                  height: 154,
                  width: 173,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    gradient: LinearGradient(
                        colors: [ColorsManager.yellowKaramel, ColorsManager.blackKaramel]),
                    image: DecorationImage(
                      image: AssetImage(
                        AssetManager.mosque3Image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 77,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    gradient: LinearGradient(
                        colors: [ColorsManager.yellowKaramel, ColorsManager.blackKaramel]),
                  ),
                  child: Center(
                    child: Text(
                      "islami",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 520,
            left: 300,
            child: Container(
              height: 187,
              width: 87,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AssetManager.flowerTwoImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 650,
            left: 65,
            child: Column(
              children: [
                SizedBox(
                  width: 250,
                  child: Image.asset(AssetManager.routeImage),
                ),
                Text("  Supervised by Mohamed Nabil",style: TextStyle(
                  color: ColorsManager.karamel,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
