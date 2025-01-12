import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartProductName extends StatelessWidget {
  final String? name;

  const CartProductName({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name!,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w900,
        fontSize: 16
      ),
    );
  }
}
