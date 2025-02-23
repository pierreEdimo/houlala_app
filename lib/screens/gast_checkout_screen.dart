import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/controllers/address_controller.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/address_info_card.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/check_out_cart_item.dart';
import 'package:houlala_app/shared_widgets/item_total_card.dart';
import 'package:houlala_app/shared_widgets/payment_button.dart';
import 'package:houlala_app/shared_widgets/user_info_card.dart';

class GastCheckoutScreen extends ConsumerWidget {
  const GastCheckoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);
    AddressController addressController = AddressController(ref);
    AuthController authController = AuthController(ref);

    UserModel? gastUser = authController.gastUser;
    bool? hastGastUserInfo = authController.hasGastUserInfo;
    List<MappedCartItem> mappedCartItems = cartController.mappedDbCartItemList;
    Address? gastUserAddress = addressController.gastUserAddress;
    bool hasAddress = addressController.hasAddress;

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
                    UserInfoCard(
                      hasUserInfo: hastGastUserInfo,
                      userModel: gastUser,
                    ),
                    AddressInfoCard(
                      isLoggedIn: false,
                      hasAddress: hasAddress,
                      loading: false,
                      selectedAddress: gastUserAddress,
                    ),
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
              onPressed: () => {},
            )
          ],
        ),
      ),
    );
  }
}
