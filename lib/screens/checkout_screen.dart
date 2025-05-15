import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/address_controller.dart';
import 'package:houlala_app/features/address/address.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/auth/user_model.dart';
import 'package:houlala_app/features/carts/cart_controller.dart';
import 'package:houlala_app/features/carts/mapped_cart_item.dart';
import 'package:houlala_app/features/order/order_controller.dart';
import 'package:houlala_app/features/order/order_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/item_total_card.dart';
import 'package:houlala_app/shared_widgets/address_info_card.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
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

    UserModel? connectedUser = authController.connectedUser;
    Address? selectedAddress =
        addressController.getDeliveryAddress(connectedUser!.deliveryAddressId!);
    List<MappedCartItem> mappedCartItems = cartController.cartItemList;
    bool? loading = orderController.loading;
    bool isLoggedIn = authController.isLoggedIn;

    void confirmPayment() {
      print(authController.hasUserInfo);

      if (!authController.hasUserInfo || !addressController.hasAddress) {
        CustomToastNotification.showErrorAction(
            'Svp veuillez ajouter vos informations personnelles et votre adresse.');
      } else {
        for (var mappedCartItem in mappedCartItems) {
          var order = OrderModel(
              user: connectedUser,
              cartItems: mappedCartItem.cartItems,
              local: mappedCartItem.local,
              address: selectedAddress,
              totalPrice:
                  ItemCalculations.getTotalPrice(mappedCartItem.cartItems!),
              totalQuantity:
                  ItemCalculations.getTotalQuantity(mappedCartItem.cartItems!));

          try {
            orderController.placeOrder(order);
          } catch (e) {
            if (kDebugMode) {
              print(e);
            }
            rethrow;
          }
          cartController.emptiesTheCartAfterOrder();
        }
      }
    }

    return CustomScaffold(
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
        loading: loading,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 110),
            child: Column(
              spacing: verticalPadding,
              children: [
                UserInfoCard(
                  hasUserInfo: authController.hasUserInfo,
                  userModel: connectedUser,
                  isLoggedIn: isLoggedIn,
                ),
                AddressInfoCard(
                  loading: addressController.loading,
                  hasAddress: addressController.hasAddress,
                  selectedAddress: selectedAddress,
                  isLoggedIn: isLoggedIn,
                ),
                CustomCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 8,
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
                ),
                PaymentButton(
                  onPressed: () => confirmPayment(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
