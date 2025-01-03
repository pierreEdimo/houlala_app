import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/product.dart';
import '../providers/products_provider.dart';

class ProductController {
  WidgetRef? ref;

  ProductController(this.ref) : super();

  List<Product> get productList {
    return ref!.watch(productStateNotifierProvider).productList;
  }

  List<Product> getProductByCategoryId(int cid) {
    return productList.where((product) => product.category!.id == cid).toList();
  }

  List<Product> getTopSellingProductsByLocalId(int localId) {
    return productList
        .where((product) => product.local!.id == localId)
        .take(4)
        .toList();
  }

  List<Product> getProductByLocalId(int localId) {
    return productList
        .where((product) => product.local!.id == localId)
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
            product.category!.id == cid && product.productType!.id == scid)
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
