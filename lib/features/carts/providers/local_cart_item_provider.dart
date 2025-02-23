import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/carts/state/local_cart_item_state.dart';
import 'package:houlala_app/helpers/bottom_sheet.dart';
import 'package:houlala_app/helpers/boxes.dart';

final localCartItemStateNotifierProvider =
    StateNotifierProvider<LocalCartItemStateNotifier, LocalCartItemState>(
        (_) => LocalCartItemStateNotifier());

class LocalCartItemStateNotifier extends StateNotifier<LocalCartItemState> {
  final cartList = Boxes.getCartItems();

  LocalCartItemStateNotifier() : super(LocalCartItemState()) {
    //cartList.deleteFromDisk();
    loadCartItems();
  }

  void loadCartItems() {
    final cartItems = cartList.values.toList();
    state = state.copyWith(cartItemList: cartItems, isCartLoading: false);
  }

  void addProductToCartItem(CartItem item) async {
    final cartItems = cartList.values.toList();

    if (cartItems.isEmpty) {
      cartList.add(item);
      state = state.copyWith(cartItemList: [...state.cartItemList, item]);
    } else {
      final index = cartItems
          .indexWhere((cart) => cart.product!.dbId! == item.product!.dbId!);

      if (index != -1) {
        final existingCartItem = cartItems[index];

        final updatedCartItem = existingCartItem.copyWith(
            quantity: existingCartItem.quantity! + item.quantity!,
            price: existingCartItem.price! + item.price!);

        await cartList.putAt(index, updatedCartItem);

        List<CartItem> updatedCartItems = List.from(state.cartItemList);
        updatedCartItems[index] = updatedCartItem;

        state = state.copyWith(cartItemList: updatedCartItems);
      } else {
        cartList.add(item);
        state = state.copyWith(cartItemList: [...state.cartItemList, item]);
      }
    }
    CustomBottomSheet.openBottomSheetOnSuccess();
  }

  void increaseQuantity(CartItem item) async {
    final cartItems = cartList.values.toList();

    final index = cartItems
        .indexWhere((cart) => cart.product!.dbId == item.product!.dbId!);

    final existingCartItem = cartItems[index];
    final updatedCartItem = existingCartItem.copyWith(
        quantity: existingCartItem.quantity! + 1,
        price: existingCartItem.price! + item.product!.unitSellingPrice!);

    await cartList.putAt(index, updatedCartItem);

    List<CartItem> updatedCartItems = List.from(state.cartItemList);
    updatedCartItems[index] = updatedCartItem;
    state = state.copyWith(cartItemList: updatedCartItems);
  }

  void decreaseQuantity(CartItem item) async {
    final cartItems = cartList.values.toList();

    final index = cartItems
        .indexWhere((cart) => cart.product!.dbId == item.product!.dbId!);

    final existingCartItem = cartItems[index];
    final updatedCartItem = existingCartItem.copyWith(
        quantity: existingCartItem.quantity! - 1,
        price: existingCartItem.price! - item.product!.unitSellingPrice!);

    await cartList.putAt(index, updatedCartItem);

    List<CartItem> updatedCartItems = List.from(state.cartItemList);
    updatedCartItems[index] = updatedCartItem;
    state = state.copyWith(cartItemList: updatedCartItems);
  }

  void removeItemFromCart(CartItem item) async {
    await cartList.delete(item.key);
    List<CartItem> updatedItems = [
      for (final CartItem cartItem in List.from(state.cartItemList))
        if (cartItem.product!.dbId != item.product!.dbId) cartItem
    ];
    state = state.copyWith(cartItemList: updatedItems);
  }

  void deleteAllItemAfterOrder() async {
    final cartItems = cartList.values.toList();
    for (final CartItem cartItem in cartItems) {
      await cartList.delete(cartItem.key);
    }
    state = state.copyWith(cartItemList: []);
  }
}
