import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import '../features/categories/controllers/categories_controller.dart';
import '../features/categories/model/categories.dart';
import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../features/sub_categories/controllers/sub_category_controllers.dart';
import '../features/sub_categories/models/sub_category.dart';
import '../helpers/constants.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/c_container.dart';
import '../shared_widgets/column_headers.dart';
import '../shared_widgets/filter_products_button.dart';
import '../shared_widgets/product_card.dart';
import '../shared_widgets/search_input.dart';
import '../shared_widgets/sub_category_card.dart';

class CategoryDetailScreen extends ConsumerWidget {
  const CategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int id = ModalRoute.of(context)!.settings.arguments as int;
    CategoriesController controller = CategoriesController(ref);

    var selectedCategory = controller.categories
        .where((category) => category.id == id)
        .toList()
        .first;

    return CategoryDetailBody(
      category: selectedCategory,
    );
  }
}

class CategoryDetailBody extends StatelessWidget {
  final Categories? category;

  const CategoryDetailBody({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    switch (category!.name!) {
      case 'Commerces':
        return const Center(
          child: Text('Hello Commercs'),
        );
      case 'Services':
        return const Center(
          child: Text('Hello Services'),
        );
      case 'Immobilier':
        return const CategoryBookScreen();
      case 'Livre':
        return const Scaffold(
          appBar: CustomAppBar(),
        );
      default:
        return CategoryDefaultScreen(
          categoryId: category!.id!,
          categoryName: category!.name,
        );
    }
  }
}

class CategoryBookScreen extends StatelessWidget {
  const CategoryBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: const SearchInput(),
      ),
    );
  }
}

class CategoryDefaultScreen extends ConsumerWidget {
  final int? categoryId;
  final String? categoryName;

  const CategoryDefaultScreen({
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
        ? 'Error connecting to the Database'
        : '';

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInput(
          productList: productFromCategories,
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
                padding: const EdgeInsets.only(
                  top: verticalPadding,
                  left: horizontalPadding,
                  right: horizontalPadding,
                  bottom: stackBottomPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ColumnHeaders(title: categoryName),
                    subCategoryList.isEmpty
                        ? const SizedBox(height: verticalPadding)
                        : Container(),
                    subCategoryList.length > 1
                        ? SizedBox(
                            height: 350,
                            child: GridView.count(
                              crossAxisCount: 2,
                              scrollDirection: Axis.horizontal,
                              children: subCategoryList
                                  .map(
                                    (category) => SubCategoryCard(
                                      subCategory: category,
                                    ),
                                  )
                                  .toList(),
                            ),
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
                        GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          childAspectRatio: productAspectRatio,
                          children: productFromCategories
                              .map(
                                (product) => ProductCard(
                                  product: product,
                                ),
                              )
                              .toList(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            productFromCategories.length > 1
                ? const FilterProductsButton()
                : Container()
          ],
        ),
      ),
    );
  }
}
