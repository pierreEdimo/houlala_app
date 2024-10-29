import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/c_button.dart';
import '../shared_widgets/image_slider.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);

    final int productId = ModalRoute.of(context)!.settings.arguments as int;

    Product selectedProduct = productController.productList
        .where((product) => product.id == productId)
        .toList()
        .first;

    late int quantity = selectedProduct.quantity!;

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const HeroIcon(HeroIcons.heart),
          ),
          IconButton(
            onPressed: () {},
            icon: const HeroIcon(HeroIcons.share),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: stackDefaultPadding,
              child: Column(
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
                  const SizedBox(
                    height: verticalPadding,
                  ),
                  Row(
                    children: [
                      const HeroIcon(
                        HeroIcons.buildingStorefront,
                        size: 17,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        selectedProduct.seller!.sellerName!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Text(
                    selectedProduct.name!,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 22.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          HeroIcon(
                            HeroIcons.star,
                            color: Colors.amber,
                            style: HeroIconStyle.solid,
                          ),
                          Text(
                            '(4.9)',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            '2.8k reviews',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Row(
                            children: [
                              IconButton(
                                onPressed: () => setState(() {
                                  if (quantity > 1) quantity -= 1;
                                }),
                                icon: const HeroIcon(HeroIcons.minus),
                              ),
                              Text('$quantity'),
                              IconButton(
                                  onPressed: () => setState(() {
                                        quantity += 1;
                                      }),
                                  icon: const HeroIcon(HeroIcons.plus))
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                  // Html(
                  //   style: {
                  //     "body": Style(
                  //       letterSpacing: 0.5,
                  //       lineHeight: LineHeight.em(1.3),
                  //       wordSpacing: 0.5
                  //     )
                  //   },
                  //   data: selectedProduct.longDescription,
                  // )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 90,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Prix',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${selectedProduct.sellingPrice} XAF',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    CustomButton(
                      onTap: () {},
                      leadingIcon: HeroIcons.shoppingBag,
                      title: 'Ajouter au Panier',
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
