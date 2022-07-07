import 'package:flutter/material.dart';
// ignore: camel_case_types
class Nav_Bar extends StatefulWidget {
  const Nav_Bar({Key? key}) : super(key: key);

  @override
  State<Nav_Bar> createState() => _Nav_BarState();
}

// ignore: camel_case_types
class _Nav_BarState extends State<Nav_Bar> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 4,
      iconSize: 25,
      backgroundColor: Colors.white10,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black,
      currentIndex: index,
      onTap: (value){
        setState(() {
          index=value;

        });
      },

      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        const BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        BottomNavigationBarItem(icon:GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, "Login Screen");
          },
          child: const Icon(Icons.person),
        ),label: "profile",),
        const BottomNavigationBarItem(icon: Icon(Icons.home),label: "home",),
        const BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),

      ],


    );
  }
}
