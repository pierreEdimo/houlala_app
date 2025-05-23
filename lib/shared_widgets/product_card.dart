import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/products/product_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import '../features/products/product.dart';

class ProductCard extends ConsumerWidget {
  final Product? product;

  const ProductCard({
    super.key,
    this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);
    return InkWell(
      onTap: () {
        productController.getSelectedProduct(product!.dbId!);
        Navigator.of(context)
            .pushNamed('/productDetail', arguments: product!.dbId!);
      },
      child: SizedBox(
        child: Column(
          spacing: 5,
          children: [
            Expanded(
              child: CustomCard(
                padding: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(product!.images![0]),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  product!.category!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                Text(
                  product!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${product!.unitSellingPrice!}',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'XAF',
                      style: TextStyle(fontSize: priceFontSize),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
