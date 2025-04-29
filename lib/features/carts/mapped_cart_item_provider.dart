import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/auth_provider.dart';
import 'package:houlala_app/features/auth/user_model.dart';
import 'package:houlala_app/features/carts/cart_item.dart';
import 'package:houlala_app/features/carts/mapped_cart_item.dart';
import 'package:houlala_app/features/carts/cart_repository.dart';
import 'package:houlala_app/features/carts/mapped_cart_item_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/helpers/bottom_sheet.dart';
import 'package:http/http.dart';

final cartItemRepositoryProvider =
    Provider<CartRepository>((ref) => CartRepository());

final cartItemStateNotifierProvider =
    StateNotifierProvider<MappedCartItemStateNotifier, MappedCartItemState>(
        (ref) => MappedCartItemStateNotifier(
            ref.watch(cartItemRepositoryProvider),
            ref.watch(authStateNotifierProvider).connectedUser!));

class MappedCartItemStateNotifier extends StateNotifier<MappedCartItemState> {
  final CartRepository cartRepository;
  final UserModel userModel;

  MappedCartItemStateNotifier(this.cartRepository, this.userModel)
      : super(MappedCartItemState()) {
    loadCartItems();
  }

  Future<void> loadCartItems() async {
    String? userId = userModel.id;
    try {
      state = state.copyWith(loading: true);
      List<MappedCartItem> mappedCartItems =
          await cartRepository.fetchCartItems(userId!);
      state = state.copyWith(
          cartItemList: mappedCartItems, loading: false, errorMessage: '');
    } catch (exception) {
      if (kDebugMode) {
        print(exception);
      }

      CustomToastNotification.showErrorAction(
          'Erreur lors du chargement des articles.');

      state = state.copyWith(
          loading: false,
          errorMessage: 'Erreur lors du chargement des articles.');
    }
  }

  Future<void> addProductToCart(CartItem createCartItem, WidgetRef ref) async {
    final Response response =
        await cartRepository.addProductToCart(createCartItem);
    if (response.statusCode == HttpStatus.ok) {
      _updateState(response);
      CustomBottomSheet.openBottomSheetOnSuccess(ref);
    } else {
      if (kDebugMode) {
        print(response.body);
      }
      CustomToastNotification.showErrorAction(
          "Erreur lors de l'ajout de produits dans le panier.");
    }
  }

  Future<void> removeProductFromCart(int id) async {
    String? userId = userModel.id;
    final Response response =
        await cartRepository.removeProductFromCart(id, userId!);
    if (response.statusCode == HttpStatus.ok) {
      _updateState(response);
    } else {
      CustomToastNotification.showErrorAction(
          "Erreur lors du retrait d'un produit du panier.");
    }
  }

  Future<void> increaseItemQuantity(int id) async {
    String? userId = userModel.id;
    String uri = '${dotenv.env['CART_URL']}/increase/$id/users/$userId';
    final Response response = await cartRepository.changeItemQuantity(uri);
    if (kDebugMode) {
      print(response.statusCode);
      print(jsonEncode(response.body));
    }
    if (response.statusCode == HttpStatus.ok) {
      _updateState(response);
    } else {
      CustomToastNotification.showErrorAction(
          "Erreur lors de l'augmentation du produit.");
    }
  }

  Future<void> decreaseItemQuantity(int id) async {
    String? userId = userModel.id;
    String uri = '${dotenv.env['CART_URL']}/decrease/$id/users/$userId';
    final Response response = await cartRepository.changeItemQuantity(uri);
    if (kDebugMode) {
      print(response.statusCode);
      print(jsonEncode(response.body));
    }
    if (response.statusCode == HttpStatus.ok) {
      _updateState(response);
    } else {
      CustomToastNotification.showErrorAction(
          "Erreur lors de la reduction du produit.");
    }
  }

  void _updateState(Response response) {
    List<MappedCartItem> mappedItems = _getMapItemsFromDb(response);
    state = state.copyWith(cartItemList: mappedItems);
  }

  List<MappedCartItem> _getMapItemsFromDb(Response response) {
    List<dynamic> body = jsonDecode(response.body);
    return body.map((dynamic item) => MappedCartItem.fromJson(item)).toList();
  }

  void emptiesTheMappedListAfterOrder(){
    state = state.copyWith(cartItemList: []);
  }
}
