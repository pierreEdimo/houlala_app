import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/category/category_controller.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/product_grid.dart';
import 'package:houlala_app/shared_widgets/product_type_grid.dart';
import '../features/products/product_controller.dart';
import '../features/products/product.dart';
import '../features/product_type/product_type_controller.dart';
import '../features/product_type/product_type.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/c_container.dart';
import '../shared_widgets/column_headers.dart';
import '../shared_widgets/search_input_button.dart';

class CategoryDetailScreen extends ConsumerWidget {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;
    CategoryController controller = CategoryController(ref);

    var selectedCategory = controller.categoryList
        .where((category) => category.dbId == categoryArg.categoryId)
        .toList()
        .first;

    return CategoryDetailBody(
      categoryId: selectedCategory.dbId,
      categoryName: selectedCategory.name,
    );
  }
}

class CategoryDetailBody extends ConsumerWidget {
  final int? categoryId;
  final String? categoryName;

  const CategoryDetailBody({
    super.key,
    this.categoryId,
    this.categoryName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);
    ProductTypeController productTypeController = ProductTypeController(ref);

    List<ProductType> productTypeList =
        productTypeController.fetchCategoriesByCid(categoryId!);
    List<Product> productFromCategories =
        productController.getProductByCategoryId(categoryId!);

    bool typeLoading = productTypeController.isLoading;

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInputButton(
          hinText: 'Rechercher dans $categoryName',
          onPressed: () => Navigator.of(context).pushNamed('/searchProducts', arguments: SearchArgs(
            categoryId: categoryId,
            hinText: 'Rechercher dans $categoryName'
          )),
        ),
      ),
      body: CustomContainer(
        loading: typeLoading,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ColumnHeaders(title: categoryName),
              productTypeList.isEmpty
                  ? const SizedBox(height: verticalPadding)
                  : Container(),
              productTypeList.length > 1
                  ? VertiProductTypeGrid(
                      categoryId: categoryId,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      productTypeList: productTypeList,
                    )
                  : Container(),
              productTypeList.length > 1
                  ? const SizedBox(
                      height: verticalPadding,
                    )
                  : Container(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '${productFromCategories.length} produits',
                  ),
                  VerticalProductGrid(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    aspectRatio: productAspectRatio,
                    productList: productFromCategories,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
