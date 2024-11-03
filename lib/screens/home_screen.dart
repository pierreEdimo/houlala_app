import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/categories/controllers/categories_controller.dart';
import 'package:houlala_app/features/products/controllers/product_controller.dart';
import 'package:houlala_app/features/products/model/product.dart';
import 'package:houlala_app/features/sellers/controllers/sellers_controller.dart';
import 'package:houlala_app/features/sellers/model/seller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/categories_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:houlala_app/shared_widgets/see_more_button.dart';
import 'package:houlala_app/shared_widgets/seller_card.dart';
import 'package:houlala_app/shared_widgets/vproduct_grid.dart';
import '../features/categories/model/categories.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);
    List<Product> topSellingProductList =
        productController.topSellingProductList;
    List<Product> recommandedProductList =
        productController.recommandedProductList;
    List<Product> historicProductList = productController.historicProductList;

    CategoriesController categoriesController = CategoriesController(ref);
    List<Categories> topCategoryList = categoriesController.topCategoryList;

    SellersController sellersController = SellersController(ref);
    List<Seller> topSellingList = sellersController.topSellerList;

    String getErrorMessage() {
      if (productController.errorMessage.isNotEmpty ||
          sellersController.errorMessage.isNotEmpty ||
          categoriesController.errorMessage.isNotEmpty) {
        return 'Erreur de connexion avec la base de données';
      }
      return '';
    }

    return CustomContainer(
      loading: productController.loading &&
          categoriesController.loading &&
          sellersController.loading,
      errorMessage: getErrorMessage(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 110,
              left: horizontalPadding,
              right: horizontalPadding,
              top: verticalPadding),
          child: Column(
            children: [
              topSellingProductList.length > 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const ColumnHeaders(title: 'Les produits populaires'),
                        VerticalProductGrid(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          aspectRatio: productAspectRatio,
                          productList: topSellingProductList.take(4).toList(),
                        ),
                        SeeMoreButton(
                          onTap: () {},
                        ),
                        const SizedBox(height: verticalPadding),
                      ],
                    )
                  : Container(),
              recommandedProductList.length > 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const ColumnHeaders(title: 'Nos recommandations'),
                        VerticalProductGrid(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          aspectRatio: productAspectRatio,
                          productList: recommandedProductList.take(4).toList(),
                        ),
                        SeeMoreButton(
                          onTap: () {},
                        ),
                        const SizedBox(height: verticalPadding),
                      ],
                    )
                  : Container(),
              topCategoryList.length > 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const ColumnHeaders(
                            title: 'Nos catégories les plus populaires'),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: topCategoryList
                                .map(
                                  (category) => SizedBox(
                                    width: 200,
                                    child: CategoriesCard(
                                      categories: category,
                                    ),
                                  ),
                                )
                                .take(6)
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: verticalPadding),
                      ],
                    )
                  : Container(),
              historicProductList.length > 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const ColumnHeaders(
                            title: 'Votre historique de recherche'),
                        VerticalProductGrid(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          aspectRatio: productAspectRatio,
                          productList: historicProductList.take(4).toList(),
                        ),
                        SeeMoreButton(onTap: () {}),
                        const SizedBox(height: verticalPadding),
                      ],
                    )
                  : Container(),
              topSellingList.length > 1
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const ColumnHeaders(
                          title: 'Decouvrez nos magasins qui vendent le mieux',
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: topSellingList
                                .map(
                                  (seller) => SizedBox(
                                    width: 200,
                                    child: SellerCard(
                                      seller: seller,
                                    ),
                                  ),
                                )
                                .take(6)
                                .toList(),
                          ),
                        ),
                        SeeMoreButton(onTap: () {})
                      ],
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
