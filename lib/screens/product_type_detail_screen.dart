import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/product_grid.dart';
import '../features/products/product_controller.dart';
import '../features/products/product.dart';
import '../features/product_type/models/product_type.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/search_input_button.dart';

class ProductTypeDetailScreen extends ConsumerWidget {
  const ProductTypeDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoryArg categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;

    ProductType? productType = categoryArg.productType;


    ProductController productController = ProductController(ref);
    List<Product> productList = productController.getProductBySubCategoryId(categoryArg.categoryId!, productType!.dbId!);
    bool loading = productController.loading;

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInputButton(
          hinText: 'Rechnercher dans ${productType.name}',
          onPressed: () => Navigator.of(context).pushNamed(
            '/searchProducts',
            arguments: SearchArgs(
              hinText: 'Recherecher dans ${productType.name}',
              categoryId: categoryArg.categoryId,
              productTypeId: productType.dbId!
            )
          ),
        ),
      ),
      body: CustomContainer(
        loading: loading,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    '${productList.length} produits dans ${productType.name}',
                  ),
                ],
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
    );
  }
}
