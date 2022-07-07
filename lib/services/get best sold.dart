import 'dart:convert';

import 'package:bneksy/models/best_Sold.dart';
import 'package:http/http.dart'as http;

class GetBestSold{




Future<List<BestSoldModel>>  getBestSolid()async{
http.Response response=await http.get(Uri.parse("https://bneksy.com/api/products/best-sold?filter_type=three_info"));
print(response.statusCode);
if(response.statusCode==200){
List<dynamic> data =jsonDecode(response.body);
List<BestSoldModel> bestSolidList=[];
for(int i =0; i<data.length; i++){
  bestSolidList.add(
    BestSoldModel.fromJson(data[i]),
  );

}
return bestSolidList;
}
else{
  throw Exception("there is aproblem with status code ${response.statusCode}");
}
}}