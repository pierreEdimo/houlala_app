import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/helpers/constants.dart';

class TotalCartItem extends StatelessWidget {
  final int? totalQuantity;
  final double? totalPrice;

  const TotalCartItem({
    super.key,
    this.totalQuantity,
    this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: horizontalPadding,
      children: [
        Text('Sous-total($totalQuantity)'),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '$totalPrice',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              'XAF',
              style: TextStyle(
                fontSize: priceFontSize,
              ),
            )
          ],
        )
      ],
    );
  }
}
