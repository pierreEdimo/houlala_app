import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/order/order_repository.dart';
import 'package:houlala_app/features/order/order_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:houlala_app/main.dart';
import 'package:http/http.dart';

import 'order_model.dart';

final orderRepositoryProvider =
    Provider<OrderRepository>((ref) => OrderRepository());

final orderStateNotifierProvider =
    StateNotifierProvider<OrderStateNotifier, OrderState>(
        (ref) => OrderStateNotifier(ref.watch(orderRepositoryProvider)));

final class OrderStateNotifier extends StateNotifier<OrderState> {
  final OrderRepository orderRepository;

  OrderStateNotifier(this.orderRepository) : super(OrderState()) {
    fetchUserOrders();
  }

  Future<void> placeOrder(OrderModel order) async {
    state = state.copyWith(loading: true);
    String? token = await TokenHelper.getToken();
    final Response response = await orderRepository.placeOrder(order);
    if (response.statusCode == HttpStatus.created) {
      if (token != null) {
        OrderModel createdOrder =
            OrderModel.fromJson(jsonDecode(response.body));
        state = state.copyWith(orderList: [...state.orderList, createdOrder]);
      }
      CustomToastNotification.showSuccessFulAction(
          "Vos commandes ont ete envoyes avec succes");
      navigatorKey.currentState!.pushNamed('/');
    } else {
      CustomToastNotification.showErrorAction(
          "Erreur lors de l'envoie de vos commandes");
      state = state.copyWith(loading: false);
      throw 'error';
    }
    Timer(const Duration(seconds: 10), () {
      state = state.copyWith(loading: false);
    });
  }

  Future<void> fetchUserOrders() async {
    state = state.copyWith(loading: true);
    try {
      List<OrderModel> orders = await orderRepository.fetchUsersOrders();
      state = state.copyWith(orderList: orders, loading: false);
    } catch (e) {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement de vos commandes.");
      state = state.copyWith(
          errorMessage: "erreur lors du chargement de vos commandes.",
          loading: false);
    }
  }
}
