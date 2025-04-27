import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'product.dart';
import 'products_provider.dart';

class ProductController {
  WidgetRef? ref;

  ProductController(this.ref) : super();

  List<Product> get productList {
    return ref!.watch(productStateNotifierProvider).productList;
  }

  List<Product> get favoriteProductList {
    return ref!.watch(productStateNotifierProvider).bookmarkedList;
  }

  List<Product> getProductByCategoryId(int cid) {
    return productList.where((product) => product.category!.dbId == cid).toList();
  }

  void getSelectedProduct(int id) {
    ref!.read(productStateNotifierProvider.notifier).fetchSelectedProduct(id);
  }

  Product? get selectedProduct {
    return ref!.watch(productStateNotifierProvider).selectedProduct;
  }

  void addProductToFavorite(int id){
    ref!.read(productStateNotifierProvider.notifier).addProductToFavorite(id);
  }

  void removeProductFromFavorite(int id) {
    ref!.read(productStateNotifierProvider.notifier).removeProductFromFavorite(id);
  }

  List<Product> getTopSellingProductsByLocalId(int localId) {
    return productList
        .where((product) => product.local!.dbId == localId)
        .take(4)
        .toList();
  }

  List<Product> getProductByLocalId(int localId) {
    return productList
        .where((product) => product.local!.dbId == localId)
        .toList();
  }

  List<Product> get searchProductResultList {
    return ref!.watch(productStateNotifierProvider).searchProductList;
  }

  List<Product> get topSellingProductList {
    return ref!.watch(productStateNotifierProvider).topSellingProductList;
  }

  List<Product> get recommandedProductList {
    return ref!.watch(productStateNotifierProvider).offerProductList;
  }

  List<Product> get historicProductList {
    return ref!.watch(productStateNotifierProvider).historicProductList;
  }

  void searchProduct(String term,
      {int? categoryId, int? sellerId, int? subCategoryId}) {
    ref!.read(productStateNotifierProvider.notifier).searchProducts(
          term,
          categoryId: categoryId,
          sellerId: sellerId,
          subCategoryId: subCategoryId,
        );
  }

  List<Product> getProductBySubCategoryId(int cid, int scid) {
    return productList
        .where((product) =>
            product.category!.dbId == cid && product.productType!.dbId == scid)
        .toList();
  }

  bool get loading {
    return ref!.watch(productStateNotifierProvider).loading;
  }

  String get errorMessage {
    return ref!.watch(productStateNotifierProvider).errorMessage;
  }

  void resetSearchAndFilterungList() {
    ref!
        .read(productStateNotifierProvider.notifier)
        .resetSearchAndFilterungProductList();
  }
}
