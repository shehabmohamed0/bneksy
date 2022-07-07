import 'package:bneksy/models/best_Sold.dart';
import 'package:flutter/material.dart';

import '../models/final_model.dart';
class Castom_card extends StatelessWidget {

final SuccessBestSold bestSold;

  Castom_card({Key? key, required this.bestSold}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
    children : [
      Container(
        height: 150,
        width: 220,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 20,
                offset:Offset (1,1))
          ]
        ),
        child:Card(
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Positioned(
                  right: 32,
                  bottom: 85,
                  child: Image.network("https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",height: 50,),
                ),
                SizedBox(height: 5,),
                FittedBox(child: Text(bestSold.product.name)),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ Text("233"),
                    Icon(Icons.favorite,color: Colors.red,),

                  ],


                ),
              ],
            ),
          )
        )
      ),


    ]

    );
  }
}