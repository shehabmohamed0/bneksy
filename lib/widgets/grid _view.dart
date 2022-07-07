import 'package:bneksy/models/best_Sold.dart';
import 'package:bneksy/services/get%20best%20sold.dart';
import 'package:bneksy/widgets/castom_card.dart';
import 'package:flutter/material.dart';

import 'carousel_Slider.dart';

// ignore: camel_case_types
class Grid_view extends StatelessWidget {
  const Grid_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<BestSoldModel>>(
          future: GetBestSold().getBestSolid(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: non_constant_identifier_names
              List<BestSoldModel> BestSold = snapshot.data!;

              return Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 65),
                child: GridView.builder(
                  itemCount: BestSold.length,
                    clipBehavior: Clip.none,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Castom_card(bestSold: BestSold[index],);
                    }),
              );
            } else {
              return const Center(
                child:  CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
