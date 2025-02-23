import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

import '../helpers/item_calculations.dart';

class ItemTotalCart extends StatelessWidget {
  final List<MappedCartItem>? mappedCartItems;

  int get totalQuantity {
    return ItemCalculations.getOrderTotalQuantity(mappedCartItems!);
  }

  double get totalPrice {
    return ItemCalculations.getOrderTotalPrice(mappedCartItems!);
  }

  const ItemTotalCart({
    super.key,
    this.mappedCartItems,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total($totalQuantity)'),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end ,
                children: [
                  Text(
                    '$totalPrice',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                    ),
                  ),
                  const Text('XAF')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
