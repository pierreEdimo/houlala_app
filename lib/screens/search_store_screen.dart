import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/locals/search_local_provider.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/result_seller_card.dart';
import 'package:houlala_app/shared_widgets/search_field.dart';

import '../features/locals/locals_controller.dart';
import '../features/locals/local_model.dart';

class SearchStoreScreen extends ConsumerWidget {
  const SearchStoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocalsController sellersController = LocalsController(ref);
    SearchArgs searchArgs =
        ModalRoute.of(context)!.settings.arguments as SearchArgs;
    List<LocalModel> filteredLocals = sellersController.filteredLocals;

    bool isSearchSubmitted = ref.watch(searchLocalStateNotifierProvider);

    return CustomScaffold(
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
                  .read(searchLocalStateNotifierProvider.notifier)
                  .setSearchSubmittedTrue();
            } else {
              DoNothingAction();
            }
          },
        ),
      ),
      body: !isSearchSubmitted
          ? Container() // todo: implement a screen to filter vorschlag
          : CustomContainer(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 110),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('${filteredLocals.length} magasin(s) trouve(s)'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 8,
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
            ),
    );
  }
}
