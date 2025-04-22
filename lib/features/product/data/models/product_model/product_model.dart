import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qtech_task_flutter/features/product/data/models/review_model/review_model.dart';

import '../../../domain/entities/product/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel{
  const factory ProductModel({
    required int id,
    required String title,
    required String description,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String availabilityStatus,
    required List<ReviewModel> reviews,
    required String thumbnail,
  }) = _ProdcutModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}

extension ToProduct on ProductModel{
  Product toDomain() {
    return Product(
      id: id,
      title: title,
      description: description,
      price: price,
      discountPercentage: discountPercentage,
      priceAfterDiscount: price - (price * discountPercentage / 100),
      rating: rating,
      stock: stock,
      availabilityStatus: availabilityStatus,
      reviews: reviews.length,
      thumbnail: thumbnail,
    );
  }
}