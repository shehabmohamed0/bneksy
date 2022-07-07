import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/final_model.dart';

class GetBestSold {
  Future<List<SuccessBestSold>> getBestSolid() async {
    try {
      http.Response response = await http.get(Uri.parse(
          "https://bneksy.com/api/products/best-sold?filter_type=three_info"));
      if (response.statusCode == 200) {
        final List data = jsonDecode(response.body)['success'];
        List<SuccessBestSold> bestSolidList = [];
        for (int i = 0; i < data.length; i++) {
          bestSolidList.add(
            SuccessBestSold.fromJson(data[i] as Map<String, dynamic>),
          );
        }
        return bestSolidList;
      } else {
        throw Exception(
            "there is aproblem with status code ${response.statusCode}");
      }
    } catch (e) {

      print(e);
      rethrow;
    }
  }
}
