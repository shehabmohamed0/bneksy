import 'package:bneksy/widgets/castom_Button.dart';
import 'package:bneksy/widgets/castum_textField.dart';
import 'package:flutter/material.dart';
class About_Store extends StatelessWidget {
  const About_Store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("تسجيل كتاجر",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Castom_TextField(hint: "اسم المتجر"),
        SizedBox(height: 10,),
            Castom_TextField(hint: "عنوان المتجر"),
            SizedBox(height: 10,),
            Castom_TextField(hint: "صورة السجل التجاري"),
            SizedBox(height: 10,),
Castom_Button(buttonName: "ارسال"),
SizedBox(height: 25,), const Text("او التسجيل عن طريق",style:  TextStyle(fontSize: 25,),),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.pink,

                ),
                SizedBox(width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,

                ),
              ],
            ),

            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "Login Screen" );
                  },
                  child: const Text("تسجيل الدخول",style: TextStyle(fontSize: 20,color: Colors.blue),),
                ),
                const Text("  لديك حساب بالفعل؟",style: TextStyle(fontSize: 20,),
                ),

              ],
            )
          ],
        ),
      )
    );
  }
}
