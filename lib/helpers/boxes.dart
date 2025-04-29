import 'package:hive_ce/hive.dart';
import 'package:houlala_app/features/carts/cart_item.dart';

class Boxes {
  static Box<CartItem> getCartItems() => Hive.box<CartItem>('cartItems');
}
