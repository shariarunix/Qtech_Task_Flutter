import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchInitial() = FetchInitial;
  const factory ProductEvent.fetchMore() = FetchMore;
  const factory ProductEvent.search(String query) = Search;
  const factory ProductEvent.sortByPrice(bool isAscending) = SortByPrice;
  const factory ProductEvent.sortByRating() = SortByRating;
}
