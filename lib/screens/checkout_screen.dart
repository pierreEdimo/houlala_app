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
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/shared_widgets/ItemTotalCard.dart';
import 'package:houlala_app/shared_widgets/address_card.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/check_out_cart_item.dart';
import 'package:houlala_app/shared_widgets/payment_button.dart';
import 'package:houlala_app/shared_widgets/user_info_card.dart';

class CheckoutScreen extends ConsumerWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);
    AddressController addressController = AddressController(ref);
    AuthController authController = AuthController(ref);

    Address? selectedAddress = addressController.getDeliveryAddress(1);
    List<MappedCartItem> cartItems = cartController.cartItemList;
    UserModel? connectedUser = authController.connectedUser;

    void confirmPayment() {
      if (!authController.hasUserInfo && !addressController.hasAddress) {
        ToastNotification.showErrorAction(
            'Svp veuillez ajouter vos informations personnelles et votre adresse.');
      } else {}
    }

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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: stackDefaultPadding,
              child: Column(
                spacing: verticalPadding,
                children: [
                  UserInfoCard(
                    hasUserInfo: authController.hasUserInfo,
                    userModel: connectedUser,
                  ),
                  AddressCard(
                    hasAddress: addressController.hasAddress,
                    selectedAddress: selectedAddress,
                  ),
                  CustomCard(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: cartItems
                          .map(
                            (item) => CheckOutCartItem(
                              mappedCartItem: item,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  ItemTotalCart(
                    mappedCartItems: cartItems,
                  )
                ],
              ),
            ),
          ),
          PaymentButton(
            onPressed: () => confirmPayment(),
          )
        ],
      ),
    );
  }
}
