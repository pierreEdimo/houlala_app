import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';

import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../features/sub_categories/models/sub_category.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/filter_products_button.dart';
import '../shared_widgets/product_card.dart';
import '../shared_widgets/search_input.dart';

class SubCategoryDetailScreen extends ConsumerWidget {
  const SubCategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SubCategory subCategory =
        ModalRoute.of(context)!.settings.arguments as SubCategory;

    ProductController productController = ProductController(ref);
    List<Product> productList = productController.getProductBySubCategoryId(
        subCategory.category!.id!, subCategory.id!);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInput(
          hinText: 'Rechnercher dans ${subCategory.name}',
          productList: productList,
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: verticalPadding,
                left: horizontalPadding,
                right: horizontalPadding,
                bottom: stackBottomPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '${productList.length} produits dans ${subCategory.name}',
                  ),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: productAspectRatio,
                    physics: const ClampingScrollPhysics(),
                    children: productList
                        .map(
                          (product) => ProductCard(
                            product: product,
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ),
          productList.length > 1
              ? const FilterProductsButton()
              : Container()
        ],
      ),
    );
  }
}
