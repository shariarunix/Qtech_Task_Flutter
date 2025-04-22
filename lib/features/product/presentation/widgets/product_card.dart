import 'package:flutter/material.dart';
import 'package:qtech_task_flutter/core/theme/app_color.dart';
import 'package:qtech_task_flutter/features/product/domain/entities/product/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    product.thumbnail,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Icon(Icons.error, color: Colors.red),
                      );
                    },
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.favorite,
                        color: AppColor.orange,
                        size: 16,
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          product.title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            Text(
              '\$${product.priceAfterDiscount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    decoration: TextDecoration.lineThrough,
                    color: AppColor.lightGrey,
                  ),
            ),
            Text(
              '${product.discountPercentage.toStringAsFixed(2)}% OFF',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColor.orange,
                    fontWeight: FontWeight.bold,
                  ),
            )
          ],
        ),
        SizedBox(height: 12),
        Row(
          spacing: 8,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.orange,
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.all(2),
              child: Icon(
                Icons.star,
                color: AppColor.white,
                size: 16,
              ),
            ),
            Text(
              product.rating.toStringAsFixed(1),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '(${product.reviews.toString()})',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColor.lightGrey,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
