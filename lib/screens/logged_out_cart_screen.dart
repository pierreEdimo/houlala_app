import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/carts/providers/local_cart_item_provider.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/checkout_button.dart';
import 'package:houlala_app/shared_widgets/mapped_cart_item_card.dart';

class LoggedOutCartScreen extends ConsumerWidget {
  const LoggedOutCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);

    List<MappedCartItem> cartItemList = cartController.mappedDbCartItemList;
    bool loading = ref.watch(localCartItemStateNotifierProvider).isCartLoading;
    String errorMessage =
        ref.watch(localCartItemStateNotifierProvider).errorMessage;

    return CustomContainer(
      loading: loading,
      errorMessage: errorMessage,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const HeroIcon(HeroIcons.chevronLeft),
          ),
          title: Text(
            'Panier',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        body: cartItemList.isNotEmpty
            ? Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: stackDefaultPadding,
                    children: cartItemList
                        .map(
                          (item) => MappedCartItemCard(
                            mappedCartItem: item,
                          ),
                        )
                        .toList(),
                  ),
                  CheckoutButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/gastCheckout'),
                  )
                ],
              )
            : const Center(
                child: Text('Aucun produit dans le panier.'),
              ),
      ),
    );
  }
}
