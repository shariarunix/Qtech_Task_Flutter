import 'package:qtech_task_flutter/core/usecases/get_product_use_case.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_event.dart';
import 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductUseCase getProducts;

  ProductBloc(this.getProducts) : super(const ProductState()) {
    on<FetchInitial>(_onFetchInitial);
    on<FetchMore>(_onFetchMore);
    on<Search>(_onSearch);
    on<SortByPrice>(_onSortByPrice);
    on<SortByRating>(_onSortByRating);
    on<OnFavourite>(_onFavouriteChanged);
  }

  Future<void> _onFetchInitial(
      FetchInitial event, Emitter<ProductState> emit) async {
    emit(state.copyWith(isLoading: true));
    final products = await getProducts.execute();
    emit(state.copyWith(
      products: products,
      page: 1,
      isLoading: false,
      hasMore: products.length == 10,
    ));
  }

  Future<void> _onFetchMore(FetchMore event, Emitter<ProductState> emit) async {
    if (state.isLoading || !state.hasMore) return;
    emit(state.copyWith(isLoading: true));
    final more = await getProducts.execute(skip: state.page * 10);
    emit(state.copyWith(
      products: [...state.products, ...more],
      page: state.page + 1,
      isLoading: false,
      hasMore: more.length == 10,
    ));
  }

  void _onSearch(Search event, Emitter<ProductState> emit) {
    emit(state.copyWith(isSearching: event.query.isNotEmpty));

    final filtered = state.products
        .where((e) => e.title.toLowerCase().contains(event.query.toLowerCase()))
        .toList();

    emit(state.copyWith(searchedProduct: filtered));
  }

  void _onSortByPrice(SortByPrice event, Emitter<ProductState> emit) {
    emit(state.copyWith(isSearching: false));

    final sorted = [...state.products]..sort((a, b) => event.isAscending
        ? a.price.compareTo(b.price)
        : b.price.compareTo(a.price));

    emit(state.copyWith(products: sorted));
  }

  void _onSortByRating(SortByRating event, Emitter<ProductState> emit) {
    final sorted = [...state.products]
      ..sort((a, b) => b.rating.compareTo(a.rating));
    emit(state.copyWith(products: sorted));
  }

  void _onFavouriteChanged(OnFavourite event, Emitter<ProductState> emit){
    final products = [...state.products];
    final favourite = state.products[event.index];
    products[event.index] = favourite.copyWith(isFavourite: !favourite.isFavourite);
    emit(state.copyWith(products: products));
  }
}
