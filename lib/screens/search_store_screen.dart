import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/sellers/controllers/sellers_controller.dart';
import 'package:houlala_app/features/sellers/model/seller.dart';
import 'package:houlala_app/features/sellers/providers/search_seller_provider.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/filter_button.dart';
import 'package:houlala_app/shared_widgets/result_seller_card.dart';

class SearchStoreScreen extends ConsumerWidget {
  const SearchStoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SellersController sellersController = SellersController(ref);
    SearchArgs searchArgs =
        ModalRoute.of(context)!.settings.arguments as SearchArgs;
    List<Seller> filteredSellers = sellersController.filteredSellers;
    final TextEditingController textEditingController = TextEditingController();
    bool isSearchSubmitted = ref.watch(searchStateNotifierProvider);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            sellersController.resetFilterSellers();
            ref
                .read(searchStateNotifierProvider.notifier)
                .setSearchSubmittedFalse();
          },
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: TextFormField(
          textInputAction: TextInputAction.search,
          controller: textEditingController,
          onFieldSubmitted: (value) {
            if (value.isNotEmpty) {
              if (searchArgs.subCategoryId != null) {
                sellersController.searchSellers(value,
                    subCategoryId: searchArgs.subCategoryId);
              } else {
                sellersController.searchSellers(value);
              }
              ref
                  .read(searchStateNotifierProvider.notifier)
                  .setSearchSubmittedTrue();
            } else {
              DoNothingAction();
            }
          },
          decoration: InputDecoration(
            hintText: searchArgs.hinText,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 2),
              borderRadius: radius,
            ),
            hintStyle: const TextStyle(color: Color(0xff000000)),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
      body: !isSearchSubmitted
          ? Container()
          : Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: verticalPadding,
                        left: horizontalPadding,
                        right: horizontalPadding,
                        bottom: stackBottomPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('${filteredSellers.length} magasin(s) trouve(s)'),
                        ListView(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          children: filteredSellers
                              .map(
                                (seller) => ResultSellerCard(
                                  seller: seller,
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
                filteredSellers.isNotEmpty ? const FilterButton() : Container()
              ],
            ),
    );
  }
}
