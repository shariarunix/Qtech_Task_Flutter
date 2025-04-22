import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_model/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> fetchProducts({int limit, int skip});
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> fetchProducts({int limit = 10, int skip = 0}) async {
    final url = Uri.parse('https://dummyjson.com/products?limit=$limit&skip=$skip');

    final response = await client.get(url);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      final List<dynamic> productList = jsonMap['products'];

      return productList.map<ProductModel>((jsonItem) {
        return ProductModel.fromJson(jsonItem);
      }).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
