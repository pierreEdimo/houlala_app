import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/cart_header.dart';
import 'package:houlala_app/shared_widgets/cart_item_product_image.dart';
import 'package:houlala_app/shared_widgets/cart_product_name.dart';
import 'package:houlala_app/shared_widgets/total_cart_item.dart';

import '../features/carts/model/cart_item.dart';

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

    void deleteProductFromCart(int id) {
      cartController.removeProductFromCart(id);
    }

    void decreaseItemQuantity(int id) {
      cartController.decreaseItemQuantity(id);
    }

    void increaseItemQuantity(int id) {
      cartController.increaseItemQuantity(id);
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
                    onDecrease: () => decreaseItemQuantity(item.id!),
                    onIncrease: () => increaseItemQuantity(item.id!),
                    onPressed: () => deleteProductFromCart(item.id!),
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
    return Card(
      elevation: 0,
      color: Colors.white,
      child: SizedBox(
        height: 170,
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
                          const SizedBox(width: 20),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${cartItem!.price!}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const Text(
                        ' XAF',
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
