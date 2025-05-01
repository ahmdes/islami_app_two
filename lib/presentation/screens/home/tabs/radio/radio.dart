
import 'package:flutter/material.dart';

import '../../../../../core/resources/asset_manager.dart';
class Radio extends StatefulWidget {
  const Radio({super.key});

  @override
  State<Radio> createState() => _RadioState();
}

class _RadioState extends State<Radio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetManager.radioBackGround),fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 171,
            width: 291,
            child: Image.asset(AssetManager.isalmiLogo),
          ),

        ],
      ),
    );
  }
}
