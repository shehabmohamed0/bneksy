import 'package:bneksy/screens/regisrer_customer_Screen.dart';
import 'package:bneksy/widgets/castom_Button.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class Register_Screen extends StatelessWidget {
  const Register_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Padding(padding: const EdgeInsets.all(15),
 child: Column(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [ const Center(
     child: Text("انشاء حساب جديد",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
   ),
   SizedBox(height: 150,),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Register_Castomur();
          }));
        },
        child: Castom_Button(buttonName: "تسجيل كعميل"),
      ),

     SizedBox(height: 15,),

     GestureDetector(
       onTap: (){
         Navigator.pushNamed(context, "ٌRegister merchant");
       },
       child:  Castom_Button(buttonName: "تسجيل كتاجر"),
     ),

   ],
 ),),
    );
  }
}
