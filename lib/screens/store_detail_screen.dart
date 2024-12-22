import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/locals/controllers/locals_controller.dart';
import 'package:houlala_app/features/product_type/controllers/product_type_controller.dart';
import 'package:houlala_app/features/product_type/models/product_type.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';
import 'package:houlala_app/shared_widgets/vproduct_type_grid.dart';

import '../shared_widgets/local_card.dart';

class StoreDetailScreen extends ConsumerWidget {
  const StoreDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;

    ProductTypeController subCategoryControllers = ProductTypeController(ref);
    LocalsController localsController = LocalsController(ref);

    bool isLoading = localsController.loading;
    List<LocalModel> localList = localsController.localList;
    String errorMessage = localsController.errorMessage;

    List<ProductType> productTypeList =
        subCategoryControllers.fetchCategoriesByCid(categoryArg.categoryId!);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInputButton(
          onPressed: () => Navigator.of(context).pushNamed(
            '/searchStore',
            arguments: SearchArgs(hinText: 'Rechercher dans Magasin'),
          ),
          hinText: 'Rechercher dans Magasin',
        ),
      ),
      body: CustomContainer(
        loading: isLoading,
        errorMessage: errorMessage,
        child: SingleChildScrollView(
          child: Padding(
            padding: defaultPadding,
            child: Column(
              children: [
                productTypeList.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const ColumnHeaders(
                              title:
                                  'Decouvrez nos partenaires par categories.'),
                          VertiProductTypeGrid(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            productTypeList: productTypeList,
                          )
                        ],
                      )
                    : Container(),
                const SizedBox(height: verticalPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ColumnHeaders(
                      title: 'Decouvrez nos partenaires',
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                      children: localList
                          .map((local) => LocalCard(
                                local: local,
                              ))
                          .toList(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
