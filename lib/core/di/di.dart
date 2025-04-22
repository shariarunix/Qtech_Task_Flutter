import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

import '../../features/product/data/datasource/product_remote_data_source.dart';
import '../../features/product/data/repositories/product_repository_impl.dart';
import '../../features/product/domain/repositories/product_repository.dart';

GetIt di = GetIt.instance;

Future<void> diInit() async {
  di.registerLazySingleton(() => http.Client());

  di.registerLazySingleton<ProductRemoteDataSource>(
        () => ProductRemoteDataSourceImpl(client: di()),
  );

  di.registerLazySingleton<ProductRepository>(
        () => ProductRepositoryImpl(remoteDataSource: di()),
  );
}
