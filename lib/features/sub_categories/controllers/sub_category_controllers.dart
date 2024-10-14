import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/sub_category.dart';
import '../providers/sub_category_provider.dart';

class SubCategoryControllers {
  WidgetRef? ref;

  SubCategoryControllers(this.ref);

  List<SubCategory> fetchCategoriesByCid(int cid) {
    return ref!
        .watch(subCategoryStateNotifierProvider)
        .categoriesList
        .where((category) => category.category!.id == cid)
        .toList();
  }
}
