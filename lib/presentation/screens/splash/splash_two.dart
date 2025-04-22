import 'package:flutter/material.dart';
import 'package:islami_app_2/core/resources/asset_manager.dart';
import 'package:islami_app_2/core/resources/colors_manager.dart';
import 'package:islami_app_2/core/routes/route_manager.dart';
class SplashTwo extends StatefulWidget {
  const SplashTwo({super.key});

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }
  void navigate()
  {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushNamed(context, RouteManager.intro);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 6,),
            Container(
              height: 165,
              width: 185,
              decoration: BoxDecoration(
                color: Colors.transparent,
                gradient: LinearGradient(colors:[
                  ColorsManager.blackKaramel,
                  ColorsManager.yellowKaramel,
                ]),
                image: DecorationImage(image:AssetImage(AssetManager.mosque3Image),),
              ),
            ),
            Spacer(flex: 4,),
            SizedBox(
              width: 250,
              child: Image.asset(AssetManager.routeImage),
            ),
            Text("  Supervised by Mohamed Nabil",style: TextStyle(
              color: ColorsManager.karamel,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
