import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/carts/model/create_cart_item.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/carts/providers/mapped_cart_item_provider.dart';

class CartController {
  WidgetRef? ref;

  CartController(this.ref) : super();

  bool get loading {
    return ref!.watch(cartItemStateNotifierProvider).loading;
  }

  List<MappedCartItem> get cartItemList {
    return ref!.watch(cartItemStateNotifierProvider).cartItemList;
  }

  String get errorMessage {
    return ref!.watch(cartItemStateNotifierProvider).errorMessage;
  }

  void addProductToCart(CreateCartItem createCartItem) {
    ref!
        .read(cartItemStateNotifierProvider.notifier)
        .addProductToCart(createCartItem);
  }

  void increaseItemQuantity(int id) {
    ref!.read(cartItemStateNotifierProvider.notifier).increaseItemQuantity(id);
  }

  void decreaseItemQuantity(int id) {
    ref!.read(cartItemStateNotifierProvider.notifier).decreaseItemQuantity(id);
  }

  void removeProductFromCart(int id) {
    ref!.read(cartItemStateNotifierProvider.notifier).removeProductFromCart(id);
  }
}
