import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/carts/providers/local_cart_item_provider.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/checkout_button.dart';
import 'package:houlala_app/shared_widgets/item_total_card.dart';
import 'package:houlala_app/shared_widgets/mapped_cart_item_card.dart';

class LoggedOutCartScreen extends ConsumerWidget {
  const LoggedOutCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);

    List<MappedCartItem> cartItemList = cartController.mappedDbCartItemList;
    bool loading = ref.watch(localCartItemStateNotifierProvider).isCartLoading;

    return CustomContainer(
      loading: loading,
      child: cartItemList.isNotEmpty
          ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 110),
                child: Column(
                  spacing: verticalPadding,
                  children: [
                    Column(
                      children: cartItemList
                          .map((item) => MappedCartItemCard(
                                mappedCartItem: item,
                              ))
                          .toList(),
                    ),
                    ItemTotalCart(
                      mappedCartItems: cartItemList,
                    ),
                    CheckoutButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/gast-checkout'),
                    )
                  ],
                ),
              ),
            )
          : const Center(
              child: Text('Aucun produit dans le panier.'),
            ),
    );
  }
}
