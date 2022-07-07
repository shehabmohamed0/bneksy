import 'package:flutter/material.dart';
class Castom_Button extends StatelessWidget {
final String buttonName ;

  const Castom_Button({Key? key, required this.buttonName}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15),
    child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(buttonName,style: TextStyle(color: Colors.white,fontSize: 25,),),
        )
    ),);
  }
}
