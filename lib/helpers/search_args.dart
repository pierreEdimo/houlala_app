import 'package:freezed_annotation/freezed_annotation.dart';

import '../features/products/model/product.dart';

class SearchArgs {
  final String? hinText;
  final int? subCategoryId;

  SearchArgs({
    @Default('Rechercher') this.hinText,
    @Default(null) this.subCategoryId
  });
}
