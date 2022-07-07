import 'package:bneksy/screens/forgetPassword_Screen.dart';
import 'package:bneksy/screens/regisrer_Screen.dart';
import 'package:bneksy/widgets/castum_textField.dart';
import 'package:flutter/material.dart';
// ignore: camel_case_types
class Login_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(8)),
                  const SizedBox(height: 100  ,),
                  const Text("تسجيل الدخول",style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 55,),
                  Castom_TextField(hint: "رقم الهاتف"),
                  const SizedBox(height: 15,),
                  Castom_TextField(hint: "كلمة المرور"),
                  const SizedBox(height: 35,),
                  const Text("او التسجيل عن طريق",style:  TextStyle(fontSize: 25,),),
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
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "Forget Password");

                    },
                    child:    const Text("نسيت كلمة المرور",style: TextStyle(fontSize: 20,color: Colors.blue),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const Register_Screen();
                          }));
                        },
                        child: const Text("تسجيل الدخول",style: TextStyle(fontSize: 20,color: Colors.blue),),
                      ),
                      const Text("  لديك حساب بالفعل؟",style: TextStyle(fontSize: 20,),
                      ),

                    ],
                  )]
            ),
          )
              )
          ),
    );
  }
}
