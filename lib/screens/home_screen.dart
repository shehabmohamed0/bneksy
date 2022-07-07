import 'package:bneksy/models/best_Sold.dart';
import 'package:bneksy/services/get%20best%20sold.dart';
import 'package:bneksy/widgets/carousel_Slider.dart';
import 'package:bneksy/widgets/dep_Container.dart';
import 'package:bneksy/widgets/departments.dart';
import 'package:bneksy/widgets/castom_card.dart';
import 'package:bneksy/widgets/grid%20_view.dart';
import 'package:bneksy/widgets/nav_Bar.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

// ignore: camel_case_types
class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: const Text("بنكسي"),
          centerTitle: true,
          actions: const [
            Icon(Icons.shopping_cart),
          ],
          backgroundColor: Colors.orange,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("benksy"),
                accountEmail: Text("name@benksy.com"),
                currentAccountPicture: CircleAvatar(),
                decoration: BoxDecoration(color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "Login Screen");
                  },
                  child: Text("تسجيل الدخول"),
                ),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "Login Screen");
                  },
                  child: Text("الاقسام"),
                ),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "Login Screen");
                  },
                  child: Text("العروض"),
                ),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "Login Screen");
                  },
                  child: Text("الخدمات"),
                ),
                leading: Icon(Icons.person),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const Nav_Bar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Carsoul_Slider(),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Text(
                  "الاقسام",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Departments(),
              SizedBox(
                height: 20,
              ),
              Dep_Container(
                dep_name: 'عروض بنكسي',
              ),
              SizedBox(
                height: 20,
              ),
              Carsoul_Slider(),
              SizedBox(
                height: 20,
              ),
              Dep_Container(
                dep_name: 'ملابس رجالي   ',
              ),
              SizedBox(
                height: 20,
              ),
              Carsoul_Slider(),
              SizedBox(
                height: 20,
              ),
              Dep_Container(
                dep_name: 'ملابس اولادي   ',
              ),
              SizedBox(
                height: 20,
              ),
              Carsoul_Slider(),
              SizedBox(
                height: 20,
              ),
              Dep_Container(
                dep_name: 'ملابس بناتي  ',
              ),
              SizedBox(
                height: 20,
              ),
              Carsoul_Slider(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Grid View");
                },
                child: Dep_Container(
                  dep_name: 'الاكثر مبيعا',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Carsoul_Slider(),
            ],
          ),
        ));
  }
}

class Catergory extends StatefulWidget {
  const Catergory({Key? key}) : super(key: key);

  @override
  State<Catergory> createState() => _CatergoryState();
}

class _CatergoryState extends State<Catergory> {
// your model  nullable 
 @override
  void initState() {
// dataFunction().then((v){
//      setstate((data){
//    your model = data;
// })
// });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      Carsoul_Slider(),
    ]);
  }
}
