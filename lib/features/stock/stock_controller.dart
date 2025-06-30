import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/stock/stock.dart';
import 'package:houlala_app/features/stock/stocks_provider.dart';

class StockController {
  WidgetRef? ref;

  StockController(this.ref): super();

  void loadProductStock(int id) {
    ref!.read(stockStateNotifierProvider.notifier).loadProductStock(id);
  }

  Stock get loadedStock {
    return ref!.watch(stockStateNotifierProvider).stock!;
  }

  void increaseStockQuantity(int id, int quantity) {
    ref!.read(stockStateNotifierProvider.notifier).increaseProductStock(id, quantity);
  }

  void decreaseStockQuantity(int id, int quantity) {
    ref!.read(stockStateNotifierProvider.notifier).decreaseProductStock(id, quantity);
  }
}