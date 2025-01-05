import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/order/repositories/order_repository.dart';
import 'package:houlala_app/features/order/state/order_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/main.dart';
import 'package:http/http.dart';

import '../model/order_model.dart';

final orderRepositoryProvider =
    Provider<OrderRepository>((ref) => OrderRepository());

final orderStateNotifierProvider =
    StateNotifierProvider<OrderStateNotifier, OrderState>(
        (ref) => OrderStateNotifier(ref.watch(orderRepositoryProvider)));

final class OrderStateNotifier extends StateNotifier<OrderState> {
  final OrderRepository orderRepository;

  OrderStateNotifier(this.orderRepository) : super(OrderState());

  Future<void> placeOrder(OrderModel order) async {
    state = state.copyWith(loading: true);
    final Response response = await orderRepository.placeOrder(order);
    if (response.statusCode == HttpStatus.created) {
      OrderModel createdOrder = OrderModel.fromJson(jsonDecode(response.body));
      state = state.copyWith(orderList: [...state.orderList, createdOrder]);
      CustomToastNotification.showSuccessFulAction(
          "Vos commandes ont ete envoyes avec succes");
      navigatorKey.currentState!.pushNamed('/');
    } else {
      CustomToastNotification.showErrorAction(
          "Erreur lors de l'envoie de vos commandes");
      throw 'error';
    }
  }
}
