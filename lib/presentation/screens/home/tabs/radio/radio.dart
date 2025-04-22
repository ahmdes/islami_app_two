import 'package:flutter/material.dart';
class Radio extends StatefulWidget {
  const Radio({super.key});

  @override
  State<Radio> createState() => _RadioState();
}

class _RadioState extends State<Radio> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Radio")),
    );
  }
}
