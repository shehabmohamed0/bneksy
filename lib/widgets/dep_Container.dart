import 'package:flutter/material.dart';
class Dep_Container extends StatelessWidget {
final String dep_name;

  Dep_Container({Key? key, required this.dep_name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
    child: Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(5),

      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         Padding(padding: EdgeInsets.all(15),child:  Text(dep_name,style: TextStyle(
             color: Colors.black,fontSize: 25
         ),),)
        ],
      )
    ),);
  }
}
