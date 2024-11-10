import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/checkout_button.dart';
import 'package:houlala_app/shared_widgets/mapped_cart_item_card.dart';

class LoggedInCartScreen extends ConsumerWidget {
  const LoggedInCartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);
    bool loading = cartController.loading;
    String errorMessage = cartController.errorMessage;
    List<MappedCartItem> cartItems = cartController.cartItemList;

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
            'Mon panier',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        body: cartItems.isNotEmpty
            ? Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    padding: stackDefaultPadding,
                    children: cartItems
                        .map(
                          (item) => MappedCartItemCard(
                            mappedCartItem: item,
                          ),
                        )
                        .toList(),
                  ),
                  const CheckoutButton()
                ],
              )
            : const Center(
                child: Text('Votre panier est vide'),
              ),
      ),
    );
  }
}
