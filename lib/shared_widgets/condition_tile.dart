import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import 'c_list_tile.dart';


class ConditionTile extends StatelessWidget {
  const ConditionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: () {},
      leading: const HeroIcon(
        HeroIcons.clipboardDocumentCheck,
        size: 18,
      ),
      title: const Text("Conditions d'utilisation"),
    );
  }
}