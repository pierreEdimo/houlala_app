import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/carts/cart_item.dart';
import 'package:houlala_app/features/carts/mapped_cart_item.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/cart_item_product_image.dart';
import 'package:houlala_app/shared_widgets/total_cart_item.dart';

import '../helpers/constants.dart';

class CheckOutCartItem extends StatelessWidget {
  final MappedCartItem? mappedCartItem;

  const CheckOutCartItem({
    super.key,
    this.mappedCartItem,
  });

  int get totalQuantity {
    return ItemCalculations.getTotalQuantity(mappedCartItem!.cartItems!);
  }

  double get totalPrice {
    return ItemCalculations.getTotalPrice(mappedCartItem!.cartItems!);
  }

  bool isUrl(String imageUrl) {
    return Uri.parse(imageUrl).isAbsolute;
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          Row(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: !isUrl(mappedCartItem!.local!.imageUrl!)
                    ? AssetImage('images/${mappedCartItem!.local!.imageUrl!}')
                    : NetworkImage(mappedCartItem!.local!.imageUrl!),
              ),
              Text(
                mappedCartItem!.local!.name!,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: mappedCartItem!.cartItems!
                .map(
                  (cartItem) => ProductItemCard(
                    item: cartItem,
                  ),
                )
                .toList(),
          ),
          TotalCartItem(
            totalQuantity: totalQuantity,
            totalPrice: totalPrice,
          )
        ],
      ),
    );
  }
}

class ProductItemCard extends StatelessWidget {
  final CartItem? item;

  const ProductItemCard({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        spacing: 3,
        children: [
          Expanded(
            flex: 2,
            child: CartItemProductImage(
              productImageUrl: item!.product!.images![0],
            ),
          ),
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 10,
              children: [
                Text(
                  item!.product!.name!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Text('${item!.quantity!}'),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${item!.price!}',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'XAF',
                      style: TextStyle(fontSize: priceFontSize),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
