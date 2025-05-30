import '../entities/product/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts({int limit, int skip});
}