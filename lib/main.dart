import 'package:bneksy/screens/about_store_Screen.dart';
import 'package:bneksy/screens/forgetPassword_Screen.dart';
import 'package:bneksy/screens/home_screen.dart';
import 'package:bneksy/screens/loginScreen.dart';
import 'package:bneksy/screens/newPassword_Screen.dart';
import 'package:bneksy/screens/regiser_merchant_Screen.dart';
import 'package:bneksy/widgets/grid%20_view.dart';
import 'package:bneksy/widgets/splash.dart';
import 'package:flutter/material.dart';
void main()=>runApp(const Bekansy());
class Bekansy extends StatelessWidget {
  const Bekansy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
       "Login Screen" : (context) => Login_Screen(),
       "Forget Password":(context)=> ForgetPassword_Screen(),
       "New Password":(context)=> const NewPassword_Screen(),
       "ٌRegister merchant":(context)=>const Register_marchint(),
       "About Store":(context)=>const About_Store(),
       "Home Screen":(context)=>const Home_Screen(),
       "Splash Screen":(context)=>const Splash_body(),
       "Grid View":(context)=>const Grid_view()


     },
   initialRoute:"Splash Screen" ,
    );
  }
}
