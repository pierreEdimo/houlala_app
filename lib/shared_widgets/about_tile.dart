import 'package:flutter/material.dart';

import 'c_list_tile.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: () {},
      leading: const Icon(
        Icons.info_outlined,
        size: 18,
      ),
      title: const Text('A propos'),
    );
  }
}
