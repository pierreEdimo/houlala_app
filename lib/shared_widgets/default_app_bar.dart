import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/search_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/search_input_button.dart';

class DefaultAppBar extends CustomAppBar {
  final String? navigationRoute;

  const DefaultAppBar({
    this.navigationRoute,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: SearchInputButton(
        onPressed: () => Navigator.of(context).pushNamed('/searchProducts',
            arguments: SearchArgs(hinText: 'Rechercher des produits')),
        hinText: 'Rechercher des produits',
      ),
      actions: [
        IconButton(
          onPressed: () => Navigator.of(context).pushNamed(navigationRoute!),
          icon: const HeroIcon(HeroIcons.bell),
        )
      ],
    );
  }
}
