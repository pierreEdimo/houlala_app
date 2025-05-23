import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/auth/user_model.dart';
import 'package:houlala_app/features/carts/cart_controller.dart';
import 'package:houlala_app/features/carts/cart_item.dart';
import 'package:houlala_app/features/products/product_controller.dart';
import 'package:houlala_app/features/products/product.dart';
import 'package:houlala_app/features/locals/search_local_provider.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/list_product_card.dart';
import 'package:houlala_app/shared_widgets/product_list.dart';
import 'package:houlala_app/shared_widgets/search_field.dart';

class SearchProductScreen extends ConsumerWidget {
  const SearchProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isSearchSubmitted = ref.watch(searchStateNotifierProvider);

    ProductController productController = ProductController(ref);
    AuthController authController = AuthController(ref);
    CartController cartController = CartController(ref);

    List<Product> searchProductList = productController.searchProductResultList;
    final UserModel? connectedUser = authController.connectedUser;
    final bool isLoggedIn = authController.isLoggedIn;

    SearchArgs searchArgs =
        ModalRoute.of(context)!.settings.arguments as SearchArgs;

    void addProductToCart(Product selectedProduct) {
      CartItem createCartItem = CartItem(
        quantity: 1,
        price: selectedProduct.unitSellingPrice,
        product: selectedProduct,
        userId: connectedUser != null ? connectedUser.id : 'gast-id',
      );

      cartController.addProductToCart(createCartItem, isLoggedIn: isLoggedIn);
    }

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchField(
          placeholder: '${searchArgs.hinText}',
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              productController.searchProduct(
                value,
                categoryId: searchArgs.categoryId,
                subCategoryId: searchArgs.productTypeId,
                sellerId: searchArgs.sellerId,
              );
              ref
                  .read(searchStateNotifierProvider.notifier)
                  .setSearchSubmittedTrue();
            } else {
              DoNothingAction();
            }
          },
        ),
      ),
      body: !isSearchSubmitted
          ? Container() //todo: implement a screen to filter Suggestion
          : CustomContainer(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 110),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            '${searchProductList.length} produit(s) trouve(s)',
                          )
                        ],
                      ),
                      ProductList(
                        shrinkWrap: true,
                        scrollPhysics: const ClampingScrollPhysics(),
                        productList: searchProductList
                            .map(
                              (product) => ListProductCard(
                                onAddToBasket: () {
                                  addProductToCart(product);
                                },
                                product: product,
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
