import 'package:bneksy/widgets/castom_Button.dart';
import 'package:bneksy/widgets/castum_textField.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class NewPassword_Screen extends StatelessWidget {
  const NewPassword_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("كلمة مرور جديده",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
           const SizedBox(height: 100,),
            Castom_TextField(hint: "كلمة المرور"),
            const SizedBox(height: 15,),
            Castom_TextField(hint: "تاكيد كلمة المرور"),
            const SizedBox(height: 20,),
            const Castom_Button(buttonName: "ارسال"),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "Login Screen" );
              },
              child: Text("تسجيل الدخول",style: TextStyle(fontSize: 20,color: Colors.blue),),
            )
          ],
        ),
      )
    );
  }
}
