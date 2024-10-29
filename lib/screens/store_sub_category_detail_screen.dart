import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/sellers/controllers/sellers_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/filter_button.dart';
import 'package:houlala_app/shared_widgets/search_input.dart';
import 'package:houlala_app/shared_widgets/vsellers_grid.dart';

import '../features/sellers/model/seller.dart';

class StoreSubCategoryDetailScreen extends ConsumerWidget {
  const StoreSubCategoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;

    SellersController sellersController = SellersController(ref);

    bool isLoading = sellersController.loading;
    String errorMessage = sellersController.errorMessage;
    List<Seller> sellerList = sellersController
        .getSellerListByCategoryId(categoryArg.subCategory!.id!);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchInput(
          subCategoryId: categoryArg.subCategory!.id!,
          route: '/searchStore',
          hinText: 'Rechercher dans ${categoryArg.categoryName}',
        ),
      ),
      body: CustomContainer(
        loading: isLoading,
        errorMessage: errorMessage,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: stackDefaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '${sellerList.length} Magasin(s) dans ${categoryArg.subCategory!.name}',
                    ),
                    VerticalSellersGrid(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      aspectRatio: 1 / 1.2,
                      sellerList: sellerList,
                    )
                  ],
                ),
              ),
            ),
            sellerList.length > 1 ? const FilterButton() : Container()
          ],
        ),
      ),
    );
  }
}
