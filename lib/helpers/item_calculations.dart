import 'package:houlala_app/features/carts/cart_item.dart';
import 'package:houlala_app/features/carts/mapped_cart_item.dart';

class ItemCalculations {
  static double getTotalPrice(List<CartItem> items) {
    double price = 0;
    for (var item in items) {
      price += item.price!;
    }
    return price;
  }

  static int getTotalQuantity(List<CartItem> items) {
    int qty = 0;
    for (var item in items) {
      qty += item.quantity!;
    }
    return qty;
  }

  static double getOrderTotalPrice(List<MappedCartItem> mappedCartItems) {
    double price = 0;
    for (var mappedItem in mappedCartItems) {
      double totalQuantity = getTotalPrice(mappedItem.cartItems!);
      price += totalQuantity;
    }
    return price;
  }

  static int getOrderTotalQuantity(List<MappedCartItem> mappedCartItems) {
    int quantity = 0;
    for (var mappedItem in mappedCartItems) {
      int totalQuantity = getTotalQuantity(mappedItem.cartItems!);
      quantity += totalQuantity;
    }
    return quantity;
  }
}
