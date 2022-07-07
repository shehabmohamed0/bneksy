import 'package:bneksy/widgets/castom_Button.dart';
import 'package:bneksy/widgets/splash.dart';
import 'package:flutter/material.dart';
class Splash_View extends StatelessWidget {
  const Splash_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Splash_body(),



        ],
      ),
    );
  }
}
