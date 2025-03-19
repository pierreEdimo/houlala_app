import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/products/controllers/product_controller.dart';
import 'package:houlala_app/features/products/model/product.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/image_slider.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);
    AuthController authController = AuthController(ref);
    CartController cartController = CartController(ref);

    final UserModel? connectedUser = authController.connectedUser;
    final bool isLoggedIn = authController.isLoggedIn;

    Product? selectedProduct = productController.selectedProduct;

    late int? quantity = selectedProduct?.defaultQuantity;

    void addProductToCart(int qty, bool isLoggedIn) {
      double price = selectedProduct!.unitSellingPrice! * qty;
      CartItem createCartItem = CartItem(
        quantity: qty,
        price: price,
        product: selectedProduct,
        userId: connectedUser != null ? connectedUser.id : 'gast_id',
      );

      cartController.addProductToCart(createCartItem, isLoggedIn: isLoggedIn);
    }

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (isLoggedIn) {
                if (selectedProduct != null) {
                  if (!selectedProduct.isFavorite!) {
                    productController
                        .addProductToFavorite(selectedProduct.dbId!);
                  } else {
                    productController
                        .removeProductFromFavorite(selectedProduct.dbId!);
                  }
                } else {
                  Navigator.of(context).pushNamed('/login');
                }
              }
            },
            icon: selectedProduct != null
                ? selectedProduct.isFavorite!
                    ? const HeroIcon(
                        HeroIcons.heart,
                        style: HeroIconStyle.solid,
                        color: Colors.red,
                      )
                    : const HeroIcon(HeroIcons.heart)
                : const HeroIcon(HeroIcons.heart),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const HeroIcon(HeroIcons.share),
          // )
        ],
      ),
      body: CustomContainer(
        errorMessage: productController.errorMessage,
        loading: productController.loading,
        child: selectedProduct != null
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 110,
                      left: horizontalPadding,
                      right: horizontalPadding,
                      top: verticalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        spacing: verticalPadding,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white, borderRadius: radius),
                            child: ImageSlider(
                              images: selectedProduct.images,
                            ),
                          ),
                          Row(
                            spacing: 10,
                            children: [
                              const HeroIcon(
                                HeroIcons.buildingStorefront,
                                size: 17,
                              ),
                              Text(
                                selectedProduct.local!.name!,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Text(
                        selectedProduct.name!,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      Row(
                        spacing: 20,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '${selectedProduct.unitSellingPrice}',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              const Text(
                                'XAF',
                                style: TextStyle(
                                  fontSize: 11,
                                ),
                              )
                            ],
                          ),
                          StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              return Row(
                                children: [
                                  IconButton(
                                    onPressed: () => setState(() {
                                      if (quantity! > 1) {
                                        quantity = quantity! - 1;
                                      }
                                    }),
                                    icon: const HeroIcon(HeroIcons.minus),
                                  ),
                                  Text('$quantity'),
                                  IconButton(
                                      onPressed: () => setState(() {
                                            quantity = quantity! + 1;
                                          }),
                                      icon: const HeroIcon(HeroIcons.plus))
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: verticalPadding,
                        children: [
                          Html(
                            style: {
                              "body": Style(
                                  letterSpacing: 0.5,
                                  lineHeight: LineHeight.em(1.3),
                                  wordSpacing: 0.5)
                            },
                            data: selectedProduct.description,
                          ),
                          CustomButton(
                            leadingIcon: HeroIcons.plus,
                            onPressed: () =>
                                addProductToCart(quantity!, isLoggedIn),
                            title: 'Ajouter au panier',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ),
    );
  }
}
