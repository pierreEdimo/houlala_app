import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/shared_widgets/vproduct_grid.dart';
import 'package:houlala_app/shared_widgets/vsub_category_grid.dart';
import '../features/categories/controllers/categories_controller.dart';
import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../features/sub_categories/controllers/sub_category_controllers.dart';
import '../features/sub_categories/models/sub_category.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/c_container.dart';
import '../shared_widgets/column_headers.dart';
import '../shared_widgets/filter_button.dart';
import '../shared_widgets/search_input.dart';

class CategoryDetailScreen extends ConsumerWidget {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;
    CategoriesController controller = CategoriesController(ref);

    var selectedCategory = controller.categoryList
        .where((category) => category.id == categoryArg.categoryId)
        .toList()
        .first;

    return CategoryDetailBody(
      categoryId: selectedCategory.id,
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
    SubCategoryControllers subCategoryControllers = SubCategoryControllers(ref);

    List<SubCategory> subCategoryList =
        subCategoryControllers.fetchCategoriesByCid(categoryId!);
    List<Product> productFromCategories =
        productController.getProductByCategoryId(categoryId!);

    bool isLoading = productController.loading;
    String errorMessage = productController.errorMessage.isNotEmpty
        ? 'Erreur dans la connexion à la base de données'
        : '';

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInput(
          hinText: 'Rechercher dans $categoryName',
        ),
      ),
      body: CustomContainer(
        loading: isLoading,
        errorMessage: errorMessage,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: stackDefaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ColumnHeaders(title: categoryName),
                    subCategoryList.isEmpty
                        ? const SizedBox(height: verticalPadding)
                        : Container(),
                    subCategoryList.length > 1
                        ? VerticalSubCategoryGrid(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            subCategoryList: subCategoryList,
                          )
                        : Container(),
                    subCategoryList.length > 1
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
            productFromCategories.length > 1
                ? const FilterButton()
                : Container()
          ],
        ),
      ),
    );
  }
}
