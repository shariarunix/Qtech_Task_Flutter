import '../../features/product/domain/entities/product/product.dart';
import '../../features/product/domain/repositories/product_repository.dart';

class GetProductUseCase {
  final ProductRepository repository;

  GetProductUseCase(this.repository);

  Future<List<Product>> execute({int limit = 10, int skip = 0}) {
    return repository.getProducts(limit: limit, skip: skip);
  }
}
