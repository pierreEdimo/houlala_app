import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_type.dart';
import '../providers/product_type_provider.dart';

class ProductTypeController {
  WidgetRef? ref;

  ProductTypeController(this.ref);

  List<ProductType> fetchCategoriesByCid(int cid) {
    return ref!.watch(productTypeStateNotifierProvider).productTypeMap![cid] ?? [];
  }

  bool get isLoading {
    return ref!.watch(productTypeStateNotifierProvider).loading;
  }
}
