import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/carts/providers/local_cart_item_provider.dart';
import 'package:houlala_app/features/carts/providers/mapped_cart_item_provider.dart';

class CartController {
  WidgetRef? ref;

  CartController(this.ref) : super();

  bool get loading {
    return ref!.watch(cartItemStateNotifierProvider).loading;
  }

  bool get isDbCartLoading {
    return ref!.watch(localCartItemStateNotifierProvider).isCartLoading;
  }

  String get dbErrorMessage {
    return ref!.watch(localCartItemStateNotifierProvider).errorMessage;
  }

  List<MappedCartItem> get mappedDbCartItemList {
    var existingDbCartItemList =
        ref!.watch(localCartItemStateNotifierProvider).cartItemList;

    if (existingDbCartItemList.isNotEmpty) {
      final Map<int, MappedCartItem> dbCartItemListMap = {};

      for (final item in existingDbCartItemList) {
        final localId = item.product?.local!.dbId;

        dbCartItemListMap.putIfAbsent(
          localId!,
          () => MappedCartItem(local: item.product!.local!, cartItems: []),
        );

        dbCartItemListMap[localId] =
            dbCartItemListMap[localId]!.copyWith(cartItems: [item]);
      }
      return dbCartItemListMap.values.toList();
    }

    return [];
  }

  List<MappedCartItem> get cartItemList {
    return ref!.watch(cartItemStateNotifierProvider).cartItemList;
  }

  String get errorMessage {
    return ref!.watch(cartItemStateNotifierProvider).errorMessage;
  }

  void emptiesTheCartAfterOrder() {
    ref!
        .read(cartItemStateNotifierProvider.notifier)
        .emptiesTheMappedListAfterOrder();
  }

  void addProductToCart(CartItem createCartItem, {bool isLoggedIn = false}) {
    if (isLoggedIn) {
      ref!
          .read(cartItemStateNotifierProvider.notifier)
          .addProductToCart(createCartItem);
    } else {
      ref!
          .read(localCartItemStateNotifierProvider.notifier)
          .addProductToCartItem(createCartItem);
    }
  }

  void increaseItemQuantity(int id) {
    ref!.read(cartItemStateNotifierProvider.notifier).increaseItemQuantity(id);
  }

  void decreaseItemQuantity(int id) {
    ref!.read(cartItemStateNotifierProvider.notifier).decreaseItemQuantity(id);
  }

  void removeProductFromCart(CartItem item, {bool isLoggedIn = false}) {
    if (isLoggedIn) {
      ref!
          .read(cartItemStateNotifierProvider.notifier)
          .removeProductFromCart(item.dbId!);
    } else {
      ref!
          .read(localCartItemStateNotifierProvider.notifier)
          .removeItemFromCart(item);
    }
  }
}
