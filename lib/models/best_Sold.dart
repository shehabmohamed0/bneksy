// // ignore_for_file: non_constant_identifier_names, duplicate_ignore

// import 'package:flutter/cupertino.dart';

// class BestSoldModel {
//   final Success success;

//   BestSoldModel({
//     required this.success,
//   });

//   factory BestSoldModel.fromJson(jsonData) {
//     print(jsonData);
//     return BestSoldModel(
//       success: Success.fromJson(jsonData[0]),
//     );
//   }
// }

// class Success {
//   final int id;

//   final int count;
//   final ProductModel product;

//   Success({
//     required this.id,
//     required this.count,
//     required this.product,
//   });

//   factory Success.fromJson(jsonData) {
//     return Success(
//       id: jsonData['product_id'],
//       count: jsonData['count'],
//       product: ProductModel.fromJson(jsonData["product"]),

//     );
//   }
// }

// class ProductModel {
//   final int id;
//   final String name;

//   // ignore: non_constant_identifier_names
//   final int category_id;
//   final int guide;
//   final String status;
//   final int approval;

//   // ignore: non_constant_identifier_names
//   final int average_rate;
//   final Sizes three_info_sizes;
//   final Images three_info_images;
//   ProductModel({
//     required this.id,
//     required this.name,
//     // ignore: non_constant_identifier_names
//     required this.category_id,
//     required this.guide,
//     required this.status,
//     required this.approval,
//     // ignore: non_constant_identifier_names
//     required this.average_rate,
//     required this.three_info_images,
//     required this.three_info_sizes,
//   });

//   factory ProductModel.fromJson(jsonData) {
//     return ProductModel(
//       id: jsonData['id']  ,
//       name: jsonData["name"] ,
//       category_id: jsonData["category_id"],
//       guide: jsonData["guide"],
//       status: jsonData["status"],
//       approval: jsonData["approval"],
//       average_rate: jsonData["average_rate"],
//       three_info_sizes: Sizes.fromJson(jsonData["three_info_sizes"]),
//       three_info_images: Images.fromJson(jsonData["three_info_images"]),
//     );
//   }
// }

// class Sizes {
//   final int id;
//   final int product;
//   final String size;

//   // ignore: non_constant_identifier_names
//   final String created_at;
//   final String updated_at;

//   Sizes(
//       {required this.product,
//       required this.id,
//       required this.size,
//       required this.created_at,
//       required this.updated_at});

//   factory Sizes.fromJson(jsonData) {
//     return Sizes(
//         product: jsonData["product_id"],
//         id: jsonData["id"],
//         size: jsonData["size"],
//         created_at: jsonData["created_at"],
//         updated_at: jsonData["updated_at"]);
//   }
// }

// class Images {
//   final int id;
//   final int product;
//   final String image;
//   final String created_at;
//   final String updated_at;

//   Images(
//       {required this.id,
//       required this.product,
//       required this.image,
//       required this.created_at,
//       required this.updated_at});

//   factory Images.fromJson(jsonData) {
//     return Images(
//         id: jsonData["id"],
//         product: jsonData["product_id"],
//         image: jsonData["image"],
//         created_at: jsonData["created_at"],
//         updated_at: jsonData["updated_at"]);
//   }
// }
