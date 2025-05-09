import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/category/category_controller.dart';
import 'package:houlala_app/features/category/category_model.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/default_app_bar.dart';
import 'package:houlala_app/shared_widgets/category_grid.dart';
import '../shared_widgets/column_headers.dart';

class DiscoverScreen extends ConsumerWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);

    bool loggedIn = authController.isLoggedIn;
    CategoryController categoriesController = CategoryController(ref);
    List<CategoryModel> categories = categoriesController.categoryList;
    bool loading = categoriesController.loading;

    return CustomScaffold(
      appBar: DefaultAppBar(
        navigationRoute: loggedIn ? '/notifications' : '/login',
      ),
      body: CustomContainer(
        loading: loading,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ColumnHeaders(
                title: 'Decouvrez les produits par Categories',
              ),
              CategoryGrid(
                categoryList: categories,
                shrinkWrap: true,
                aspectRatio: 1 / 0.9,
                physics: const ClampingScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
