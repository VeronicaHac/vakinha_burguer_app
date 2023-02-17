import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:vakinha_burguer_app/app/core/rest_client/custom_dio.dart';
import 'package:vakinha_burguer_app/app/models/product_model.dart';

import '../../core/execptions/repository_exception.dart';
import './products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final CustomDio dio;
  ProductsRepositoryImpl({
    required this.dio,
  });

  @override
  Future<List<ProductModel>> findAllProducts() async {
    try {
      final result = await dio.unauth().get("/products");
      return result.data
          .map<ProductModel>((p) => ProductModel.fromMap(p))
          .toList();
    } on DioError catch (e, s) {
      log("Erro ao Buscar Produtos", error: e, stackTrace: s);
      throw RepositoryException(message: "Erro ao Buscar os Produtos");
    }
  }
}
