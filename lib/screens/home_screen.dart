import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../features/categories/controllers/categories_controller.dart';
import '../features/categories/model/categories.dart';
import '../features/products/controllers/product_controller.dart';
import '../features/products/model/product.dart';
import '../features/sellers/controllers/sellers_controller.dart';
import '../features/sellers/model/seller.dart';
import '../helpers/constants.dart';
import '../helpers/products_args.dart';
import '../shared_widgets/c_container.dart';
import '../shared_widgets/categories_card.dart';
import '../shared_widgets/column_headers.dart';
import '../shared_widgets/product_card.dart';
import '../shared_widgets/seller_card.dart';

//TODO: implement all the 'voire tout' methods
class Homescreen extends ConsumerWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoriesController controller = CategoriesController(ref);
    ProductController productController = ProductController(ref);
    SellersController sellersController = SellersController(ref);

    List<Categories> categories = controller.categories;
    List<Product> products = productController.productList;
    List<Seller> sellers = sellersController.sellerList;

    bool isLoading = controller.loading ||
        productController.loading ||
        sellersController.loading;

    String errorMessage = controller.errorMessage.isNotEmpty ||
            productController.errorMessage.isNotEmpty ||
            sellersController.errorMessage.isNotEmpty
        ? 'Error Connecting to the database'
        : '';

    return Scaffold(
      body: CustomContainer(
        loading: isLoading,
        errorMessage: errorMessage,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: horizontalPadding,
                right: verticalPadding,
                top: verticalPadding,
                bottom: 110),
            child: Column(
              children: [
                products.isEmpty ? Container() : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ColumnHeaders(title: 'Recommandations pour vous'),
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                              '/allProducts',
                              arguments: ProductsArgs(productList: products)),
                          child: const Text('voire tout'),
                        )
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      childAspectRatio: productAspectRatio,
                      children: products
                          .map((product) => ProductCard(
                                product: product,
                              ))
                          .take(4)
                          .toList(),
                    )
                  ],
                ),
                const SizedBox(height: verticalPadding),
                // categories.isEmpty ? Container() : Column(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                //   children: [
                //     const ColumnHeaders(title: 'Top Categories'),
                //     SizedBox(
                //       height: 180,
                //       child: GridView.count(
                //         crossAxisCount: 2,
                //         scrollDirection: Axis.horizontal,
                //         childAspectRatio: 1 / 2,
                //         children: categories
                //             .take(6)
                //             .map(
                //               (categories) => CategoriesCard(
                //                 categories: categories,
                //               ),
                //             )
                //             .toList(),
                //       ),
                //     )
                //   ],
                // ),
                const SizedBox(height: verticalPadding),
                products.isEmpty ? Container() : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ColumnHeaders(
                          title: 'Les Produits les plus vendus',
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                            '/allProducts',
                            arguments: ProductsArgs(productList: products),
                          ),
                          child: const Text('voire tous'),
                        )
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      childAspectRatio: productAspectRatio,
                      children: products
                          .take(4)
                          .map(
                            (product) => ProductCard(
                              product: product,
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
                const SizedBox(height: verticalPadding),
                sellers.isEmpty ? Container() : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ColumnHeaders(
                          title: 'Top vendeurs',
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text('voire tout'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: sellers
                            .map(
                              (seller) => SellerCard(
                                seller: seller,
                              ),
                            )
                            .take(6)
                            .toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: verticalPadding),
               products.isEmpty ? Container() : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ColumnHeaders(
                            title: 'Produits de basique necessite'),
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                            '/allProducts',
                            arguments: ProductsArgs(productList: products),
                          ),
                          child: const Text('voire tout'),
                        )
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      childAspectRatio: 1 / 1.3,
                      children: products
                          .map((product) => ProductCard(
                                product: product,
                              ))
                          .take(4)
                          .toList(),
                    )
                  ],
                ),
                const SizedBox(height: verticalPadding),
                // products.isEmpty ? Container() : Column(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                //   children: [
                //     const ColumnHeaders(
                //       title: 'Laissez-nous vous inspirer',
                //     ),
                //     SizedBox(
                //       height: 200,
                //       child: ListView(
                //         scrollDirection: Axis.horizontal,
                //         children: const [
                //           //ToDo implement filters functionality
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: verticalPadding),
                products.isEmpty ? Container() : Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(
                            child: ColumnHeaders(
                                title:
                                    'Produits de supermarches pres de chez vous')),
                        InkWell(
                          onTap: () => Navigator.of(context).pushNamed(
                              '/allProducts',
                              arguments: ProductsArgs(productList: products)),
                          child: const Text('voire tout'),
                        )
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      childAspectRatio: productAspectRatio,
                      children: products
                          .map((product) => ProductCard(
                                product: product,
                              ))
                          .take(4)
                          .toList(),
                    )
                  ],
                ),
                const SizedBox(height: verticalPadding),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                //   children: [
                //     const ColumnHeaders(
                //       title: 'Nos services',
                //     ),
                //     SizedBox(
                //       height: 200,
                //       child: ListView(
                //         scrollDirection: Axis.horizontal,
                //         children: const [
                //           //TODO: fetch the services
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: verticalPadding),
                products.isEmpty ? Container() : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ColumnHeaders(title: 'Les plats chauds'),
                        InkWell(
                          onTap: () =>
                              Navigator.of(context).pushNamed('/foodAndDrinks'),
                          child: const Text('voire tout'),
                        )
                      ],
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      childAspectRatio: productAspectRatio,
                      children: products
                          .map((product) => ProductCard(
                                product: product,
                              ))
                          .take(4)
                          .toList(),
                    )
                  ],
                ),
                // TODO: Implements a new blog section
              ],
            ),
          ),
        ),
      ),
    );
  }
}
