import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'final_model.g.dart';

@JsonSerializable()
class SuccessBestSold {
  @JsonKey(
    name: 'product_id',
  )
  final int productId;
  final String count;
  final Product product;
  SuccessBestSold({
    required this.productId,
    required this.count,
    required this.product,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory SuccessBestSold.fromJson(Map<String, dynamic> json) =>
      _$SuccessBestSoldFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SuccessBestSoldToJson(this);
}

@JsonSerializable()
class Product {
  final int id;
  final String name;
  @JsonKey(name: 'category_id')
  final int categoryId;
  final String? guide;
  final String status;
  final int approval;
 

  Product({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.guide,
    required this.status,
    required this.approval,
  });

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
