import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/products/product_controller.dart';
import 'package:houlala_app/features/products/product.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class ListProductCard extends ConsumerWidget {
  final VoidCallback? onAddToBasket;
  final Product? product;

  const ListProductCard({
    super.key,
    this.product,
    this.onAddToBasket,
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
        height: 190,
        child: CustomCard(
          padding: EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: CustomCard(
                  padding: EdgeInsets.zero,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: radius,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          product!.images![1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                product!.category!.name!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                product!.name!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '${product!.unitSellingPrice!}',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'XAF',
                                    style: TextStyle(fontSize: priceFontSize),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        CustomButton(
                          leadingIcon: HeroIcons.shoppingBag,
                          onPressed: onAddToBasket,
                          title: 'Ajouter au panier',
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
