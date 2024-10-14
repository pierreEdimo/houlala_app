import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/filter_products_button.dart';
import '../shared_widgets/product_card.dart';

class AllProductScreen extends ConsumerStatefulWidget {
  const AllProductScreen({super.key});

  @override
  ConsumerState<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends ConsumerState<AllProductScreen> {
  late List<Product> filteredProducts;

  @override
  void initState() {
    super.initState();
    filteredProducts = [];
  }

  @override
  Widget build(BuildContext context) {
    ProductController productController = ProductController(ref);
    List<Product> products = productController.productList;

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: horizontalPadding,
                right: horizontalPadding,
                top: verticalPadding,
                bottom: stackBottomPadding,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('${products.length} produits'),
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        childAspectRatio: productAspectRatio,
                        physics: const ClampingScrollPhysics(),
                        children: products
                            .map(
                              (product) => ProductCard(
                                product: product,
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          products.length > 1 ? const FilterProductsButton() : Container()
        ],
      ),
    );
  }
}
