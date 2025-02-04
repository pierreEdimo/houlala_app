import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import 'c_list_tile.dart';

class PolicyTile extends StatelessWidget {
  const PolicyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: () {},
      leading: const HeroIcon(
        HeroIcons.shieldCheck,
        size: 18,
      ),
      title: const Text('Politique de Confidentialité'),
    );
  }
}
