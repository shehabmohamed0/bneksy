// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessBestSold _$SuccessBestSoldFromJson(Map<String, dynamic> json) =>
    SuccessBestSold(
      productId: json['product_id'] as int,
      count: json['count'] as String,
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuccessBestSoldToJson(SuccessBestSold instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'count': instance.count,
      'product': instance.product,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      categoryId: json['category_id'] as int,
      guide: json['guide'] as String?,
      status: json['status'] as String,
      approval: json['approval'] as int,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'guide': instance.guide,
      'status': instance.status,
      'approval': instance.approval,
    };
