// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductEvent()';
  }
}

/// @nodoc
class $ProductEventCopyWith<$Res> {
  $ProductEventCopyWith(ProductEvent _, $Res Function(ProductEvent) __);
}

/// @nodoc

class FetchInitial implements ProductEvent {
  const FetchInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductEvent.fetchInitial()';
  }
}

/// @nodoc

class FetchMore implements ProductEvent {
  const FetchMore();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductEvent.fetchMore()';
  }
}

/// @nodoc

class Search implements ProductEvent {
  const Search(this.query);

  final String query;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchCopyWith<Search> get copyWith =>
      _$SearchCopyWithImpl<Search>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Search &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'ProductEvent.search(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) _then) =
      _$SearchCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._self, this._then);

  final Search _self;
  final $Res Function(Search) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(Search(
      null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SortByPrice implements ProductEvent {
  const SortByPrice(this.isAscending);

  final bool isAscending;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SortByPriceCopyWith<SortByPrice> get copyWith =>
      _$SortByPriceCopyWithImpl<SortByPrice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SortByPrice &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAscending);

  @override
  String toString() {
    return 'ProductEvent.sortByPrice(isAscending: $isAscending)';
  }
}

/// @nodoc
abstract mixin class $SortByPriceCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory $SortByPriceCopyWith(
          SortByPrice value, $Res Function(SortByPrice) _then) =
      _$SortByPriceCopyWithImpl;
  @useResult
  $Res call({bool isAscending});
}

/// @nodoc
class _$SortByPriceCopyWithImpl<$Res> implements $SortByPriceCopyWith<$Res> {
  _$SortByPriceCopyWithImpl(this._self, this._then);

  final SortByPrice _self;
  final $Res Function(SortByPrice) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAscending = null,
  }) {
    return _then(SortByPrice(
      null == isAscending
          ? _self.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SortByRating implements ProductEvent {
  const SortByRating();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SortByRating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProductEvent.sortByRating()';
  }
}

/// @nodoc

class OnFavourite implements ProductEvent {
  const OnFavourite(this.index);

  final int index;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnFavouriteCopyWith<OnFavourite> get copyWith =>
      _$OnFavouriteCopyWithImpl<OnFavourite>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnFavourite &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString() {
    return 'ProductEvent.onFavourite(index: $index)';
  }
}

/// @nodoc
abstract mixin class $OnFavouriteCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory $OnFavouriteCopyWith(
          OnFavourite value, $Res Function(OnFavourite) _then) =
      _$OnFavouriteCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$OnFavouriteCopyWithImpl<$Res> implements $OnFavouriteCopyWith<$Res> {
  _$OnFavouriteCopyWithImpl(this._self, this._then);

  final OnFavourite _self;
  final $Res Function(OnFavourite) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(OnFavourite(
      null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
