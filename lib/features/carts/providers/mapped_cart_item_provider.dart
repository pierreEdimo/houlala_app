import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/auth/providers/auth_provider.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/carts/repositories/cart_repository.dart';
import 'package:houlala_app/features/carts/state/mapped_cart_item_state.dart';

final cartItemRepositoryProvider =
Provider<CartRepository>((ref) => CartRepository());

final cartItemStateNotifierProvider =
StateNotifierProvider<MappedCartItemStateNotifier, MappedCartItemState>(
        (ref) =>
        MappedCartItemStateNotifier(ref.watch(cartItemRepositoryProvider), ref
            .watch(authStateNotifierProvider)
            .connectedUser!)
); 

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
      state = state.copyWith(
          loading: false,
          errorMessage: 'Erreur lors du chargement des articles.');
    }
  }
}
