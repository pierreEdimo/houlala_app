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

  List<Product> getProductBySubCategoryId(int cid, int scid) {
    return productList
        .where((product) =>
            product.category!.id == cid && product.subCategory!.id == scid)
        .toList();
  }

  bool get loading {
    return ref!.watch(productStateNotifierProvider).loading;
  }

  String get errorMessage {
    return ref!.watch(productStateNotifierProvider).errorMessage;
  }
}
