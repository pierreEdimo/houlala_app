import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/shared_widgets/vcategory_grid.dart';
import '../features/categories/controllers/categories_controller.dart';
import '../features/categories/model/categories.dart';
import '../helpers/constants.dart';
import '../shared_widgets/column_headers.dart';

class DiscoverScreen extends ConsumerWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoriesController categoriesController = CategoriesController(ref);
    List<Categories> categories = categoriesController.categories;
    bool loading = categoriesController.loading;
    return Scaffold(
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: horizontalPadding,
                  right: horizontalPadding,
                  top: verticalPadding,
                  bottom: 110,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ColumnHeaders(
                      title: 'Decouvrez les produits par Categories',
                    ),
                    VerticalCategoryGrid(
                      categoryList: categories,
                      shrinkWrap: true,
                      aspectRatio: 1 / 1.1,
                      physics: const ClampingScrollPhysics(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
