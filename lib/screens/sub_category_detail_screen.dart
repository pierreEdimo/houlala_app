import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/shared_widgets/vproduct_grid.dart';
import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../features/sub_categories/models/sub_category.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/filter_button.dart';
import '../shared_widgets/search_input.dart';

class SubCategoryDetailScreen extends ConsumerWidget {
  const SubCategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoryArg categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;

    SubCategory? subCategory = categoryArg.subCategory;

    ProductController productController = ProductController(ref);
    List<Product> productList = productController.getProductBySubCategoryId(
        subCategory!.category!.id!, subCategory.id!);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInput(
          hinText: 'Rechnercher dans ${subCategory.name}',
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: stackDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '${productList.length} produits dans ${subCategory.name}',
                  ),
                  VerticalProductGrid(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    aspectRatio: productAspectRatio,
                    productList: productList,
                  )
                ],
              ),
            ),
          ),
          productList.length > 1 ? const FilterButton() : Container()
        ],
      ),
    );
  }
}
