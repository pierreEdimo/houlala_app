import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/shared_widgets/cart_item_product_image.dart';
import 'package:houlala_app/shared_widgets/total_cart_item.dart';

class CheckOutCartItem extends StatelessWidget {
  final MappedCartItem? mappedCartItem;

  const CheckOutCartItem({
    super.key,
    this.mappedCartItem,
  });

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
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.end,
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
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: mappedCartItem!.cartItems!
                .map((cartItem) => ProductItemCard(
                      item: cartItem,
                    ))
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
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: SizedBox(
        height: 170,
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
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),
                  ),
                  Text('${item!.quantity!}'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${item!.price!}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const Text(
                        'XAF',
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