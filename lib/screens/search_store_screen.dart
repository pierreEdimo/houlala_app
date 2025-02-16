import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/locals/providers/search_local_provider.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/filter_button.dart';
import 'package:houlala_app/shared_widgets/result_seller_card.dart';
import 'package:houlala_app/shared_widgets/search_field.dart';

import '../features/locals/controllers/locals_controller.dart';
import '../features/locals/model/local_model.dart';

class SearchStoreScreen extends ConsumerWidget {
  const SearchStoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocalsController sellersController = LocalsController(ref);
    SearchArgs searchArgs =
        ModalRoute.of(context)!.settings.arguments as SearchArgs;
    List<LocalModel> filteredLocals = sellersController.filteredLocals;

    bool isSearchSubmitted = ref.watch(searchStateNotifierProvider);

    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            sellersController.resetFilterLocals();
          },
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: SearchField(
          placeholder: searchArgs.hinText,
          onSubmitted: (value) {
            if (value.isNotEmpty) {
              if (searchArgs.productTypeId != null) {
                sellersController.searchLocals(value,
                    productTypeId: searchArgs.productTypeId);
              } else {
                sellersController.searchLocals(value);
              }
              ref
                  .read(searchStateNotifierProvider.notifier)
                  .setSearchSubmittedTrue();
            } else {
              DoNothingAction();
            }
          },
        ),
      ),
      body: !isSearchSubmitted
          ? Container() // todo: implement a screen to filter vorschlag
          : Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: stackDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('${filteredLocals.length} magasin(s) trouve(s)'),
                        ListView(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          children: filteredLocals
                              .map(
                                (seller) => ResultSellerCard(
                                  local: seller,
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
                filteredLocals.isNotEmpty ? const FilterButton() : Container()
              ],
            ),
    );
  }
}
