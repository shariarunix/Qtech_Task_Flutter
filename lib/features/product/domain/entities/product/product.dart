import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required double price,
    required double discountPercentage,
    required double priceAfterDiscount,
    required double rating,
    required int stock,
    required String availabilityStatus,
    required int reviews,
    required String thumbnail,
    @Default(false) bool isFavourite,
  }) = _Prodcut;
}
