import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtech_task_flutter/core/theme/app_color.dart';
import 'package:qtech_task_flutter/features/product/presentation/bloc/product_bloc.dart';
import 'package:qtech_task_flutter/features/product/presentation/bloc/product_event.dart';
import 'package:qtech_task_flutter/features/product/presentation/bloc/product_state.dart';
import 'package:qtech_task_flutter/features/product/presentation/widgets/product_card.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/q_search_bar.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final _searchController = TextEditingController();
  final _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _searchController.addListener(
      () => context.read<ProductBloc>().add(
            ProductEvent.search(
              _searchController.text.trim(),
            ),
          ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _showSortMenuBottomSheet({
    required VoidCallback onSortByPriceAsc,
    required VoidCallback onSortByPriceDesc,
    required VoidCallback onSortByRating,
}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColor.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Sort By",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(width: 8),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                Divider(color: AppColor.lightGrey, thickness: 0.5, height: 16),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      onSortByPriceAsc();
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Price - High to Low",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      onSortByPriceDesc();
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Price - Low to High",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: () {
                      onSortByRating();
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Rating",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _searchFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: QSearchBar(
          focusNode: _searchFocusNode,
          controller: _searchController,
          onSortMenuPressed: () {
            _showSortMenuBottomSheet(
              onSortByPriceAsc: () {
                context.read<ProductBloc>().add(
                      const ProductEvent.sortByPrice(false),
                    );
              },
              onSortByPriceDesc: () {
                context.read<ProductBloc>().add(
                      const ProductEvent.sortByPrice(true),
                    );
              },
              onSortByRating: () {
                context.read<ProductBloc>().add(
                      const ProductEvent.sortByRating(),
                    );
              },
            );
          },
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.isLoading && state.products.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollInfo) {
                if (scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent) {
                  context
                      .read<ProductBloc>()
                      .add(
                    const ProductEvent.fetchMore(),
                  );
                }
                return true;
              },
              child: MasonryGridView.count(
                itemCount: state.isSearching
                    ? state.searchedProduct.length
                    : state.products.length,
                padding: EdgeInsets.all(16),
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: state.isSearching
                        ? state.searchedProduct[index]
                        : state.products[index],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
