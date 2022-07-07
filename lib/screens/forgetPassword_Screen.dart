// ignore_for_file: camel_case_types

import 'package:bneksy/screens/newPassword_Screen.dart';
import 'package:bneksy/widgets/castom_Button.dart';
import 'package:flutter/material.dart';

import '../widgets/castum_textField.dart';
class ForgetPassword_Screen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(15),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("نسيت كلمة المرور",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            const SizedBox(height: 200,),
            Castom_TextField(hint: "البريد الالكتروني"),
            const SizedBox(height: 75,),
            const SizedBox(height: 100,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const NewPassword_Screen();
              }));
            },
            child:  Castom_Button(buttonName: "ارسال"),
          )
            
          ],

        ),
      )
    );
  }
}
