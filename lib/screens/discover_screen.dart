import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/category/controllers/category_controller.dart';
import 'package:houlala_app/features/category/model/category_model.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';
import 'package:houlala_app/shared_widgets/vcategory_grid.dart';
import '../helpers/constants.dart';
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
      appBar: CustomAppBar(
        title: SearchInputButton(
          onPressed: () => Navigator.pushNamed(
            context,
            '/searchProducts',
            arguments: SearchArgs(
                categoryId: null, productTypeId: null, sellerId: null),
          ),
          hinText: 'Rechercher des produits',
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(loggedIn ? '/notifications' : '/login'),
            icon: const HeroIcon(HeroIcons.bell),
          )
        ],
      ),
      body: CustomContainer(
        loading: loading,
        errorMessage: categoriesController.errorMessage,
        child: categoriesController.errorMessage.isNotEmpty
            ? Container()
            : Scaffold(
                body: SingleChildScrollView(
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
                          aspectRatio: 1 / 0.9,
                          physics: const ClampingScrollPhysics(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
