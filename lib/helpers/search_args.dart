import 'package:freezed_annotation/freezed_annotation.dart';

import '../features/products/model/product.dart';

class SearchArgs {
  final String? hinText;
  final List<Product>? productList;

  SearchArgs({
    @Default('Rechercher') this.hinText,
    this.productList,
  });
}
