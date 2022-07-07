import 'package:bneksy/widgets/castom_Button.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Splash_body extends StatefulWidget {
  const Splash_body({Key? key}) : super(key: key);

  @override
  State<Splash_body> createState() => _Splash_bodyState();
}

// ignore: camel_case_types
class _Splash_bodyState extends State<Splash_body>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;


  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);

  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          FadeTransition(opacity: fadingAnimation!,child:  const Center(
          child: Text(
            "BENKSY",
            style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),),),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.shopping_cart,
            size: 150,
          ),
          const SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "Home Screen");
            },
            child: const Castom_Button(buttonName: "متابعه")
          )
        ],
      ),
    );
  }

}

