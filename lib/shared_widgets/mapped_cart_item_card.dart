import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/carts/cart_controller.dart';
import 'package:houlala_app/features/carts/mapped_cart_item.dart';
import 'package:houlala_app/features/stock/stock_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/cart_header.dart';
import 'package:houlala_app/shared_widgets/cart_item_product_image.dart';
import 'package:houlala_app/shared_widgets/cart_product_name.dart';
import 'package:houlala_app/shared_widgets/total_cart_item.dart';

import '../features/carts/cart_item.dart';

class MappedCartItemCard extends ConsumerWidget {
  final MappedCartItem? mappedCartItem;

  const MappedCartItemCard({super.key, this.mappedCartItem});

  int get totalQuantity {
    return ItemCalculations.getTotalQuantity(mappedCartItem!.cartItems!);
  }

  double get totalPrice {
    return ItemCalculations.getTotalPrice(mappedCartItem!.cartItems!);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CartController cartController = CartController(ref);
    AuthController authController = AuthController(ref);
    StockController stockController = StockController(ref);

    bool isLoggedIn = authController.isLoggedIn;

    void deleteProductFromCart(CartItem item) {

      // supprime le produit tout entier
      cartController.removeProductFromCart(item, isLoggedIn: isLoggedIn);

      //augmente les produits dans le stock.
      stockController.increaseStockQuantity(item.product!.dbId!, item.quantity!);
    }

    void decreaseItemQuantity(CartItem item) {

      // reduit les produits du pannier
      cartController.decreaseItemQuantity(item, isLoggedIn: isLoggedIn);

      //augmente les produits du stock
      stockController.increaseStockQuantity(item.product!.dbId!, 1);
    }

    void increaseItemQuantity(CartItem item) {

      // augmente les produits a commander.
      cartController.increaseItemQuantity(item, isLoggedIn: isLoggedIn);

      // reduit les produits dans le stock.
      stockController.decreaseStockQuantity(item.product!.dbId!, 1);
    }

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          CartHeader(
            name: mappedCartItem!.local!.name!,
            imageUrl: mappedCartItem!.local!.imageUrl!,
          ),
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: mappedCartItem!.cartItems!
                .map(
                  (item) => CartItemCard(
                    onDecrease: () => decreaseItemQuantity(item),
                    onIncrease: () => increaseItemQuantity(item),
                    onPressed: () => deleteProductFromCart(item),
                    cartItem: item,
                  ),
                )
                .toList(),
          ),
          TotalCartItem(
            totalPrice: totalPrice,
            totalQuantity: totalQuantity,
          )
        ],
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final CartItem? cartItem;
  final VoidCallback? onPressed;
  final VoidCallback? onIncrease;
  final VoidCallback? onDecrease;

  const CartItemCard({
    super.key,
    this.cartItem,
    this.onPressed,
    this.onDecrease,
    this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.zero,
      child: SizedBox(
        height: 160,
        child: Row(
          spacing: 5,
          children: [
            Expanded(
              flex: 2,
              child: CartItemProductImage(
                productImageUrl: cartItem!.product!.images![0],
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 10,
                children: [
                  CartProductName(
                    name: cartItem!.product!.name!,
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: cartItem!.quantity! == 1
                                    ? onPressed
                                    : onDecrease,
                                icon: cartItem!.quantity! == 1
                                    ? const HeroIcon(HeroIcons.trash)
                                    : const HeroIcon(HeroIcons.minus),
                              ),
                              Text('${cartItem!.quantity!}'),
                              IconButton(
                                onPressed: onIncrease,
                                icon: const HeroIcon(HeroIcons.plus),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: onPressed,
                            icon: const HeroIcon(
                              HeroIcons.trash,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${cartItem!.price!}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        ' XAF',
                        style: TextStyle(
                          fontSize: priceFontSize,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
