import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';

class MappedCartItemCard extends StatelessWidget {
  final MappedCartItem? mappedCartItem;

  const MappedCartItemCard({super.key, this.mappedCartItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              child: Row(
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
                                'images/${mappedCartItem!.seller!.imageUrl!}'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    mappedCartItem!.seller!.sellerName!,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: mappedCartItem!.cartItems!
                  .map((item) => CartItemCard(
                        cartItem: item,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final CartItem? cartItem;

  const CartItemCard({
    super.key,
    this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: SizedBox(
        height: 170,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(cartItem!.product!.images![0]),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    cartItem!.product!.name!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w900, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return Row(
                        children: [
                          IconButton(
                            onPressed: () => {},
                            icon: const HeroIcon(HeroIcons.minus),
                          ),
                          Text('${cartItem!.quantity!}'),
                          IconButton(
                            onPressed: () => {},
                            icon: const HeroIcon(HeroIcons.plus),
                          )
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${cartItem!.price!}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                        ),
                      ),
                      Text(
                        ' XAF',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
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
