import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/order/order_model.dart';
import 'package:houlala_app/features/order/order_provider.dart';

class OrderController {
  final WidgetRef? ref;

  OrderController(this.ref) : super();

  void placeOrder(OrderModel orderModel) {
    ref!.read(orderStateNotifierProvider.notifier).placeOrder(orderModel);
  }

  bool get loading {
    return ref!.watch(orderStateNotifierProvider).loading;
  }

  List<OrderModel> get orderList {
    return ref!.watch(orderStateNotifierProvider).orderList;
  }

  String get errorMessage {
    return ref!.watch(orderStateNotifierProvider).errorMessage;
  }
}
