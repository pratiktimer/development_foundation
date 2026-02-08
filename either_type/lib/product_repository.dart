import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

import 'product.dart';

class ProductRepository {
  Future<Product> fetchProduct(int id) async {
    try {
      final response = await http.get(
        Uri.https('dummyjson.com', '/products/$id'),
      );

      if (response.statusCode != 200) {
        throw 'Fail to fetch a product';
      }

      final json = jsonDecode(response.body);

      return Product.fromJson(json);
    } catch (e) {
      rethrow;
    }
  }

  Future<Either<String, Product>> fetchEitherProduct(int id) async {
    try {
      final response = await http.get(
        Uri.https('dummyjson.com', '/products/$id'),
      );

      if (response.statusCode != 200) {
        throw 'Fail to fetch a product';
      }

      final json = jsonDecode(response.body);

      return Right(Product.fromJson(json));
    } catch (e) {
      return Left(e.toString());
    }
  }
}
