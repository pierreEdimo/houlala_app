import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/carts/controllers/cart_controller.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/products/controllers/product_controller.dart';
import 'package:houlala_app/features/locals//providers/search_local_provider.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/filter_button.dart';
import 'package:houlala_app/shared_widgets/list_product_card.dart';

import '../features/auth/model/user_model.dart';
import '../features/products/model/product.dart';

// todo: delete this page.
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductController productController = ProductController(ref);
    CartController cartController = CartController(ref);
    AuthController authController = AuthController(ref);

    SearchArgs searchArgs =
        ModalRoute.of(context)!.settings.arguments as SearchArgs;
    List<Product> searchProductList = productController.searchProductResultList;
    bool isSearchSubmitted = ref.watch(searchStateNotifierProvider);
    TextEditingController textEditingController = TextEditingController();
    UserModel connectedUser = authController.connectedUser!;

    addProductToCart(Product? product, double price) {
      CartItem createCartItem = CartItem(
        id: -1,
        userId: connectedUser.id,
        product: product,
        quantity: 1,
        price: price,
      );

      cartController.addProductToCart(createCartItem);
    }

    void resetSearch() {
      productController.resetSearchAndFilterungList();
      ref.read(searchStateNotifierProvider.notifier).setSearchSubmittedFalse();
    }

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            resetSearch();
          },
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: TextFormField(
          textInputAction: TextInputAction.search,
          controller: textEditingController,
          onFieldSubmitted: (value) {
            if (value.isNotEmpty) {
              if (kDebugMode) {
                print(value);
              }
              productController.searchProduct(value,
                  categoryId: null, subCategoryId: null, sellerId: null);
              ref
                  .read(searchStateNotifierProvider.notifier)
                  .setSearchSubmittedTrue();
            } else {
              DoNothingAction();
            }
          },
          decoration: InputDecoration(
              hintText: 'Recherche',
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: radius,
              ),
              hintStyle: const TextStyle(color: Color(0xff000000)),
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xff000000),
              )),
        ),
      ),
      body: !isSearchSubmitted
          ? Container()
          : Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: stackDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                            '${searchProductList.length} produit(s) trouve(s)'),
                        ListView(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          children: searchProductList
                              .map(
                                (product) => ListProductCard(
                                  onAddToBasket: () => addProductToCart(
                                      product!, product.unitSellingPrice!),
                                  product: product,
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
                searchProductList.isNotEmpty
                    ? const FilterButton()
                    : Container()
              ],
            ),
    );
  }
}
