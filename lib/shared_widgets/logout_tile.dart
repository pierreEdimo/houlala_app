import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

import 'c_list_tile.dart';

class LogoutTile extends StatelessWidget {
  final VoidCallback? onTap;

  const LogoutTile({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: onTap,
      leading: const HeroIcon(
        HeroIcons.arrowLeftEndOnRectangle,
        size: 18,
        color: Colors.red,
      ),
      title: const Text(
        'Se Deconnecter',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
