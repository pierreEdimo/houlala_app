import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/products/controllers/product_controller.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import '../features/products/model/product.dart';

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
        productController.getSelectedProduct(product!.id!);
        Navigator.of(context)
            .pushNamed('/productDetail', arguments: product!.id!);
      },
      child: Card(
        elevation: 0,
        color: Colors.transparent,
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
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                Text(
                  product!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900, fontSize: 16),
                ),
                Text(
                  '${product!.unitSellingPrice!.toString()} XAF',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
