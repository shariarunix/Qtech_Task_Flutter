// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {
  int get id;
  String get title;
  String get description;
  double get price;
  double get discountPercentage;
  double get priceAfterDiscount;
  double get rating;
  int get stock;
  String get availabilityStatus;
  int get reviews;
  String get thumbnail;
  bool get isFavourite;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCopyWith<Product> get copyWith =>
      _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.priceAfterDiscount, priceAfterDiscount) ||
                other.priceAfterDiscount == priceAfterDiscount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discountPercentage,
      priceAfterDiscount,
      rating,
      stock,
      availabilityStatus,
      reviews,
      thumbnail,
      isFavourite);

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, priceAfterDiscount: $priceAfterDiscount, rating: $rating, stock: $stock, availabilityStatus: $availabilityStatus, reviews: $reviews, thumbnail: $thumbnail, isFavourite: $isFavourite)';
  }
}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) =
      _$ProductCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      double price,
      double discountPercentage,
      double priceAfterDiscount,
      double rating,
      int stock,
      String availabilityStatus,
      int reviews,
      String thumbnail,
      bool isFavourite});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? priceAfterDiscount = null,
    Object? rating = null,
    Object? stock = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? thumbnail = null,
    Object? isFavourite = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _self.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      priceAfterDiscount: null == priceAfterDiscount
          ? _self.priceAfterDiscount
          : priceAfterDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _self.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      availabilityStatus: null == availabilityStatus
          ? _self.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _self.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _Prodcut implements Product {
  const _Prodcut(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.priceAfterDiscount,
      required this.rating,
      required this.stock,
      required this.availabilityStatus,
      required this.reviews,
      required this.thumbnail,
      this.isFavourite = false});

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final double priceAfterDiscount;
  @override
  final double rating;
  @override
  final int stock;
  @override
  final String availabilityStatus;
  @override
  final int reviews;
  @override
  final String thumbnail;
  @override
  @JsonKey()
  final bool isFavourite;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProdcutCopyWith<_Prodcut> get copyWith =>
      __$ProdcutCopyWithImpl<_Prodcut>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Prodcut &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.priceAfterDiscount, priceAfterDiscount) ||
                other.priceAfterDiscount == priceAfterDiscount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            (identical(other.reviews, reviews) || other.reviews == reviews) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discountPercentage,
      priceAfterDiscount,
      rating,
      stock,
      availabilityStatus,
      reviews,
      thumbnail,
      isFavourite);

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, priceAfterDiscount: $priceAfterDiscount, rating: $rating, stock: $stock, availabilityStatus: $availabilityStatus, reviews: $reviews, thumbnail: $thumbnail, isFavourite: $isFavourite)';
  }
}

/// @nodoc
abstract mixin class _$ProdcutCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProdcutCopyWith(_Prodcut value, $Res Function(_Prodcut) _then) =
      __$ProdcutCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      double price,
      double discountPercentage,
      double priceAfterDiscount,
      double rating,
      int stock,
      String availabilityStatus,
      int reviews,
      String thumbnail,
      bool isFavourite});
}

/// @nodoc
class __$ProdcutCopyWithImpl<$Res> implements _$ProdcutCopyWith<$Res> {
  __$ProdcutCopyWithImpl(this._self, this._then);

  final _Prodcut _self;
  final $Res Function(_Prodcut) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? priceAfterDiscount = null,
    Object? rating = null,
    Object? stock = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? thumbnail = null,
    Object? isFavourite = null,
  }) {
    return _then(_Prodcut(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _self.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      priceAfterDiscount: null == priceAfterDiscount
          ? _self.priceAfterDiscount
          : priceAfterDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _self.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      availabilityStatus: null == availabilityStatus
          ? _self.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _self.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnail: null == thumbnail
          ? _self.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _self.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
