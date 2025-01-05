import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/order/model/order_model.dart';
import 'package:houlala_app/features/order/providers/order_provider.dart';

class OrderController {
  final WidgetRef? ref;

  OrderController(this.ref) : super();

  void placeOrder(OrderModel orderModel) {
    try {
      ref!.read(orderStateNotifierProvider.notifier).placeOrder(orderModel);
    } catch (e) {
      rethrow;
    }
  }
}
