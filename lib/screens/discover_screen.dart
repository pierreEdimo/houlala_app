import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../features/categories/controllers/categories_controller.dart';
import '../features/categories/model/categories.dart';
import '../helpers/constants.dart';
import '../shared_widgets/categories_card.dart';
import '../shared_widgets/column_headers.dart';

class DiscoverScreen extends ConsumerWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CategoriesController categoriesController = CategoriesController(ref);
    List<Categories> categories = categoriesController.categories;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: horizontalPadding,
              right: horizontalPadding,
              top: verticalPadding,
              bottom: 110),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ColumnHeaders(
                title: 'Toutes les Categories',
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                childAspectRatio: 1/0.45,
                children: categories
                    .map((categorie) => CategoriesCard(
                          categories: categorie,
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
