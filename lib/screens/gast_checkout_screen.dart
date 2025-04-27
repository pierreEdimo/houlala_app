import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/address/address_controller.dart';
import 'package:houlala_app/features/address/address.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/features/order/controller/order_controller.dart';
import 'package:houlala_app/features/order/model/order_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/shared_widgets/address_info_card.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
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
    OrderController orderController = OrderController(ref);

    UserModel? gastUser = authController.gastUser;
    bool? hastGastUserInfo = authController.hasGastUserInfo;
    List<MappedCartItem> mappedCartItems = cartController.mappedDbCartItemList;
    Address? gastUserAddress = addressController.gastUserAddress;
    bool hasAddress = addressController.hasAddress;
    bool loading = orderController.loading;

    void confirmPayment() {
      if (!authController.hasGastUserInfo &&
          !addressController.hasGastAddress) {
        CustomToastNotification.showErrorAction(
            "Svp veuillez ajouter vos informations personnelles et votre adresse.");
      } else {
        for (var mappedCartItem in mappedCartItems) {
          OrderModel order = OrderModel(
              user: gastUser,
              cartItems: mappedCartItem.cartItems,
              local: mappedCartItem.local,
              address: gastUserAddress,
              totalQuantity:
                  ItemCalculations.getTotalQuantity(mappedCartItem.cartItems!),
              totalPrice:
                  ItemCalculations.getTotalPrice(mappedCartItem.cartItems!));

          try {
            orderController.placeOrder(order);
          } catch (e) {
            if (kDebugMode) {
              print(e);
            }
            rethrow;
          }
          cartController.deleteAllItemsAfterOrder();
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
