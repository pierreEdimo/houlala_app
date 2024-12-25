import 'package:freezed_annotation/freezed_annotation.dart';


class SearchArgs {
  final String? hinText;
  final int? productTypeId;
  final int? categoryId;
  final int? sellerId;

  SearchArgs({
    @Default('Rechercher') this.hinText,
    @Default(null) this.productTypeId,
    @Default(null) this.categoryId,
    @Default(null) this.sellerId,
  });
}
