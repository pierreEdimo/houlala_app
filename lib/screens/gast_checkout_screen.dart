import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/controllers/address_controller.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/order/controller/order_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/address_info_card.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/check_out_cart_item.dart';
import 'package:houlala_app/shared_widgets/item_total_card.dart';
import 'package:houlala_app/shared_widgets/mapped_cart_item_card.dart';
import 'package:houlala_app/shared_widgets/payment_button.dart';

class GastCheckoutScreen extends ConsumerWidget {
  const GastCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);
    AddressController addressController = AddressController(ref);
    OrderController orderController = OrderController(ref);

    List<MappedCartItem> mappedCartItems = cartController.mappedDbCartItemList;

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          'Caisse',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: CustomContainer(
        loading: false,
        errorMessage: '',
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: stackDefaultPadding,
                child: Column(
                  spacing: verticalPadding,
                  children: [
                    CustomCard(
                      child: Column(
                        children: mappedCartItems
                            .map(
                              (item) => CheckOutCartItem(
                                mappedCartItem: item,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    ItemTotalCart(
                      mappedCartItems: mappedCartItems,
                    )
                  ],
                ),
              ),
            ),
            PaymentButton(
              onPressed: () => print('Hello World !'),
            )
          ],
        ),
      ),
    );
  }
}
