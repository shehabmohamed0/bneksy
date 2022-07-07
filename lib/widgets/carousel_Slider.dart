import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Carsoul_Slider extends StatefulWidget {
  const Carsoul_Slider({Key? key}) : super(key: key);

  @override
  State<Carsoul_Slider> createState() => _Carsoul_SliderState();
}

class _Carsoul_SliderState extends State<Carsoul_Slider> {
  List<String> imageList =[
"images/store 2.jpg","images/store.jpg","images/store.jpg","images/store.jpg"

  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        CarouselSlider(items: imageList.map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(e,height: 200,width: 100,fit: BoxFit.cover,),


            ],
          ),
        )).toList(), options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
          height: 200,

        ))
      ],

    );
  }
}
