import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/categories.dart';
import '../providers/categories_provider.dart';

class CategoriesController {
  final WidgetRef? ref;

  CategoriesController(this.ref) : super();

  List<Categories> get categoryList {
    return ref!.watch(categoriesStateNotifierProvider).categoryList;
  }

  List<Categories> get topCategoryList {
    return ref!.watch(categoriesStateNotifierProvider).topCategoryList;
  }

  bool get loading {
    return ref!.watch(categoriesStateNotifierProvider).loading;
  }

  String get errorMessage {
    return ref!.watch(categoriesStateNotifierProvider).errorMessage;
  }
}
