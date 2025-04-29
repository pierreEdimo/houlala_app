import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/locals/locals_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';
import 'package:houlala_app/shared_widgets/vlocals_grid.dart';

import '../features/locals/local_model.dart';

class StoreTypeDetailScreen extends ConsumerWidget {
  const StoreTypeDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;

    LocalsController localsController = LocalsController(ref);

    bool isLoading = localsController.loading;
    List<LocalModel> localList = localsController
        .getLocalsListByCategoryId(categoryArg.productType!.dbId!);

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInputButton(
          onPressed: () => Navigator.of(context).pushNamed(
            '/searchStore',
            arguments: SearchArgs(
              productTypeId: categoryArg.productType!.dbId,
              hinText: 'Rechercher dans ${categoryArg.productType!.name}'
            ),
          ),
          hinText: 'Rechercher dans ${categoryArg.categoryName}',
        ),
      ),
      body: CustomContainer(
        loading: isLoading,
        child: SingleChildScrollView(
          child: Padding(
            padding: customDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '${localList.length} Magasin(s) dans ${categoryArg.productType!.name}',
                ),
                VerticalLocalsGrid(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  aspectRatio: verticalStoreRatio,
                  localList: localList,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
