import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/about_tile.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/condition_tile.dart';
import 'package:houlala_app/shared_widgets/login_tile.dart';
import 'package:houlala_app/shared_widgets/policy_tile.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/contact_us_tile.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';

class LoggedOutScreen extends ConsumerWidget {
  const LoggedOutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return Scaffold(
      appBar: CustomAppBar(
        title: SearchInputButton(
          onPressed: () => Navigator.pushNamed(
            context,
            '/searchProducts',
            arguments: SearchArgs(hinText: 'Rechercher des produits'),
          ),
          hinText: 'Rechercher des produits',
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushNamed('/login'),
            icon: const HeroIcon(HeroIcons.bell),
          )
        ],
      ),
      body: const CustomContainer(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 110),
            child: Column(
              spacing: verticalPadding,
              children: [
                CustomCard(
                  child: LoginTile(),
                ),
                CustomCard(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ContactUsTile(),
                        ConditionTile(),
                        PolicyTile(),
                        AboutTile(),
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
