import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/products/model/product.dart';

class ProductCard extends StatelessWidget {
  final Product? product;

  const ProductCard({
    super.key,
    this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('/productDetail', arguments: product!.id!),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Column(
          children: [
            Expanded(
              child: Card(
                color: Colors.white,
                elevation: 3,
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
            const SizedBox(height: 5.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  product!.category!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis ,
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
                  '${product!.sellingPrice!.toString()} XAF',
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
