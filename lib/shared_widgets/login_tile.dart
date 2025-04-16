import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';

import 'c_list_tile.dart';

class LoginTile extends ConsumerWidget {
  final VoidCallback? onTap;

  const LoginTile({super.key, this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return CustomListTile(
      onTap: () => Navigator.of(context).pushNamed('/login'),
      leading: const HeroIcon(
        HeroIcons.arrowRightEndOnRectangle,
        size: 18,
      ),
      title: const Text('Se Connecter'),
    );
  }
}
