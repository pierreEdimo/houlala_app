import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/cart_item_product_image.dart';
import 'package:houlala_app/shared_widgets/total_cart_item.dart';

import '../features/carts/model/cart_item.dart';

class MappedCartItemCard extends ConsumerWidget {
  final MappedCartItem? mappedCartItem;

  const MappedCartItemCard({super.key, this.mappedCartItem});

  int get totalQuantity {
    int qty = 0;
    List<CartItem> items = mappedCartItem!.cartItems!;
    for (var item in items) {
      qty += item.quantity!;
    }
    return qty;
  }

  double get totalPrice {
    double price = 0;
    List<CartItem> items = mappedCartItem!.cartItems!;
    for (var item in items) {
      price += item.price!;
    }
    return price;
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
          SizedBox(
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 8,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'images/${mappedCartItem!.local!.imageUrl!}'),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  mappedCartItem!.local!.name!,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
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
                  Text(
                    cartItem!.product!.name!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
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
