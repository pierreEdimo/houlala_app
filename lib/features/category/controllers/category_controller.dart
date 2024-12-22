import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/category/model/category_model.dart';

import '../providers/category_provider.dart';


class CategoryController {
  final WidgetRef? ref;

  CategoryController(this.ref) : super();

  List<CategoryModel> get categoryList {
    return ref!.watch(categoryStateNotifierProvider).categoryList;
  }

  List<CategoryModel> get topCategoryList {
    return ref!.watch(categoryStateNotifierProvider).topCategoryList;
  }

  bool get loading {
    return ref!.watch(categoryStateNotifierProvider).loading;
  }

  String get errorMessage {
    return ref!.watch(categoryStateNotifierProvider).errorMessage;
  }
}
