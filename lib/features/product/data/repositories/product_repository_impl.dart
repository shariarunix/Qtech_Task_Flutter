import '../../domain/entities/product/product.dart';
import '../../domain/repositories/product_repository.dart';
import '../datasource/product_remote_data_source.dart';
import '../models/product_model/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Product>> getProducts({int limit = 10, int skip = 0}) async {
    final productModels = await remoteDataSource.fetchProducts(
      limit: limit,
      skip: skip,
    );
    return productModels.map((e) => e.toDomain()).toList();
  }
}
