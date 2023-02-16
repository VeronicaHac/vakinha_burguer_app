import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:vakinha_burguer_app/app/pages/home/home_state.dart';
import 'package:vakinha_burguer_app/app/repositories/products/products_repository.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _productsRepository;

  HomeController(
    this._productsRepository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));
    try {
      await Future.delayed(Duration(seconds: 2));
      final products = await _productsRepository.findAllProducts();
      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));
    } catch (e, s) {
      log("Erro ao buscar produto");
      emit(state.copyWith(
          status: HomeStateStatus.error,
          errorMessage: "Erro ao Buscar Produtos"));
    }
  }
}
