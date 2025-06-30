import 'package:hive_ce/hive.dart';
import 'package:houlala_app/features/carts/cart_item.dart';
import 'package:houlala_app/features/suggestion/suggestion.dart';

class Boxes {
  static Box<CartItem> getCartItems() => Hive.box<CartItem>('cartItems');
  static Box<Suggestion> getSuggestions() => Hive.box<Suggestion>('suggestions');
}
