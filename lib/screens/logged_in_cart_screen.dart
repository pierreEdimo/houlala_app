import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/checkout_button.dart';
import 'package:houlala_app/shared_widgets/item_total_card.dart';
import 'package:houlala_app/shared_widgets/mapped_cart_item_card.dart';

class LoggedInCartScreen extends ConsumerWidget {
  const LoggedInCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);
    String errorMessage = cartController.errorMessage;
    List<MappedCartItem> cartItems = cartController.cartItemList;

    return CustomContainer(
      loading: cartController.loading,
      errorMessage: errorMessage,
      child: cartItems.isNotEmpty
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 110,
                    left: horizontalPadding,
                    right: horizontalPadding,
                    top: verticalPadding),
                child: Column(
                  spacing: verticalPadding,
                  children: [
                    Column(
                      children: cartItems
                          .map(
                            (item) => MappedCartItemCard(
                              mappedCartItem: item,
                            ),
                          )
                          .toList(),
                    ),
                    ItemTotalCart(
                      mappedCartItems: cartItems,
                    ),
                    CheckoutButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/checkout'),
                    )
                  ],
                ),
              ),
            )
          : const Center(
              child: Text('Votre panier est vide.'),
            ),
    );
  }
}
