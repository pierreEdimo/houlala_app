import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/stock/stock.dart';
import 'package:houlala_app/features/stock/stock_repository.dart';
import 'package:houlala_app/features/stock/stock_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:http/http.dart';

final stockRepositoryProvider =
    Provider<StockRepository>((ref) => StockRepository());

final stockStateNotifierProvider =
    StateNotifierProvider<StockStateNotifier, StockState>(
        (ref) => StockStateNotifier(ref.watch(stockRepositoryProvider)));

class StockStateNotifier extends StateNotifier<StockState> {
  final StockRepository stockRepository;

  StockStateNotifier(this.stockRepository) : super(StockState());

  Future<void> loadProductStock(int id) async {
    try {
      var stock = await stockRepository.fetchProductStock(id);
      state = state.copyWith(loading: false, stock: stock);
    } on HttpException {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des informations du produit.");
    }
  }

  Future<void> increaseProductStock(int id, int quantity) async {
    final Response response =
        await stockRepository.increaseProductQuantity(id, quantity);

    if (response.statusCode != HttpStatus.noContent) {
      CustomToastNotification.showErrorAction(
          "Erreur lors de la mise a jour des stocks.");
    }

    var existingStock = state.stock;
    existingStock = existingStock!
        .copyWith(availableQuantity: existingStock.initialQuantity! + quantity);
    state = state.copyWith(stock: existingStock);
  }

  Future<void> decreaseProductStock(int id, int quantity) async {
    final Response response =
        await stockRepository.decreaseProductQuantity(id, quantity);

    if (response.statusCode != HttpStatus.noContent) {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des informations du produit.");
    }

    var existingStock = state.stock;
    existingStock = existingStock!
        .copyWith(availableQuantity: existingStock.initialQuantity! - quantity);
    state = state.copyWith(stock: existingStock);
  }
}
