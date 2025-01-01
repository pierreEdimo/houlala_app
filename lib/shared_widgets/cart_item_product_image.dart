import 'package:flutter/material.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class CartItemProductImage extends StatelessWidget {
  final String? productImageUrl;

  const CartItemProductImage({
    super.key,
    this.productImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(productImageUrl!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
