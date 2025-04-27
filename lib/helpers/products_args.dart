import '../features/products/product.dart';

class ProductsArgs {
  final String? defaultFilter;
  final List<Product>? productList;

  ProductsArgs({
    this.defaultFilter,
    this.productList,
  });
}
