import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/product/product.dart';

part 'product_state.freezed.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default([]) List<Product> products,
    @Default(false) bool isSearching,
    @Default([]) List<Product> searchedProduct,
    @Default(false) bool isLoading,
    @Default(0) int page,
    @Default(false) bool hasMore,
  }) = _ProductState;
}

