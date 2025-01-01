import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 20,
      children: [
        RichText(
          text: TextSpan(
            text: 'Total: ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[TextSpan(text: '$totalQuantity')],
          ),
        ),
        Row(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('prix:'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$totalPrice',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const Text('XAF')
              ],
            )
          ],
        )
      ],
    );
  }
}
