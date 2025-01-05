import 'package:flutter/foundation.dart';
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
import 'package:houlala_app/features/order/controller/order_controller.dart';
import 'package:houlala_app/features/order/model/order_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
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
    OrderController orderController = OrderController(ref);

    Address? selectedAddress = addressController.getDeliveryAddress(1);
    List<MappedCartItem> mappedCartItems = cartController.cartItemList;
    UserModel? connectedUser = authController.connectedUser;

    void confirmPayment() {
      if (!authController.hasUserInfo && !addressController.hasAddress) {
        CustomToastNotification.showErrorAction(
            'Svp veuillez ajouter vos informations personnelles et votre adresse.');
      } else {
        for (var mappedCartItem in mappedCartItems) {
          var order = OrderModel(
              user: connectedUser,
              cartItems: mappedCartItem.cartItems,
              local: mappedCartItem.local,
              totalPrice:
                  ItemCalculations.getTotalPrice(mappedCartItem.cartItems!),
              totalQuantity:
                  ItemCalculations.getTotalQuantity(mappedCartItem.cartItems!));

          try {
            orderController.placeOrder(order);
            cartController.emptiesTheCartAfterOrder();
          } catch (e) {
            if (kDebugMode) {
              print(e);
            }
          }
        }
      }
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
                    loading: addressController.loading,
                    hasAddress: addressController.hasAddress,
                    selectedAddress: selectedAddress,
                  ),
                  CustomCard(
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
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
            onPressed: () => confirmPayment(),
          )
        ],
      ),
    );
  }
}
