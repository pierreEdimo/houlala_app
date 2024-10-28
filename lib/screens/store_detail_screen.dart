import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/sellers/controllers/sellers_controller.dart';
import 'package:houlala_app/features/sellers/model/seller.dart';
import 'package:houlala_app/features/sub_categories/controllers/sub_category_controllers.dart';
import 'package:houlala_app/features/sub_categories/models/sub_category.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:houlala_app/shared_widgets/search_input.dart';
import 'package:houlala_app/shared_widgets/sub_category_card.dart';

class StoreDetailScreen extends ConsumerWidget {
  const StoreDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;

    SubCategoryControllers subCategoryControllers = SubCategoryControllers(ref);
    SellersController sellersController = SellersController(ref);

    bool isLoading = sellersController.loading;
    List<Seller> sellers = sellersController.sellerList;
    String errorMessage = sellersController.errorMessage;

    List<SubCategory> subCategoryList =
        subCategoryControllers.fetchCategoriesByCid(categoryArg.categoryId!);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: const SearchInput(
          route: '/searchStore',
          hinText: 'Rechercher dans Magasin',
        ),
      ),
      body: CustomContainer(
        loading: isLoading,
        errorMessage: errorMessage,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Column(
              children: [
                subCategoryList.length > 1
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const ColumnHeaders(
                              title:
                                  'Decouvrez nos partenaires par categories.'),
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            physics: const ClampingScrollPhysics(),
                            children: subCategoryList
                                .map(
                                  (sbctry) => SubCategoryCard(
                                    subCategory: sbctry,
                                  ),
                                )
                                .toList(),
                          )
                        ],
                      )
                    : Container(),
                const SizedBox(height: verticalPadding), 
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                //   children: [
                //     const ColumnHeaders(
                //       title: 'Decouvrez nos partenaires',
                //     ),
                //     GridView.count(
                //       shrinkWrap: true,
                //       physics: const ClampingScrollPhysics(),
                //       crossAxisCount: 2,
                //       childAspectRatio: 1 / 1.2,
                //       children: sellers
                //           .map((seller) => SellerCard(
                //                 seller: seller,
                //               ))
                //           .toList(),
                //     )
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
