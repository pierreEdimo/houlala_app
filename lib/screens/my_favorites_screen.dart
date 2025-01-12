import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/products/controllers/product_controller.dart';
import 'package:houlala_app/features/products/model/product.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/list_product_card.dart';
import 'package:houlala_app/shared_widgets/product_list.dart';

class MyFavoritesScreen extends ConsumerWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);

    List<Product> productList = productController.favoriteProductList;
    bool loading = productController.loading;
    String errorMessage = productController.errorMessage;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          'Mes Favoris',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: CustomContainer(
        loading: loading,
        errorMessage: errorMessage,
        child: productList.isNotEmpty
            ? ProductList(
                padding: const EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                shrinkWrap: false,
                productList: productList
                    .map((product) => ListProductCard(
                          product: product,
                        ))
                    .toList(),
              )
            : const Center(
                child: Text('Pas de produit(s)'),
              ),
      ),
    );
  }
}
