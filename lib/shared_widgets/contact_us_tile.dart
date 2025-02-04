import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_list_tile.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsTile extends StatelessWidget {
  const ContactUsTile({super.key});

  void _openContact() async {
    final Uri uri = Uri(
      scheme: 'mailto',
      path: 'pedimonkoe@yahoo.com'
    );
    await  launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return CustomListTile(
      onTap: () => _openContact(),
      leading: const HeroIcon(
        HeroIcons.envelopeOpen,
        size: 18,
      ),
      title: const Text(
        'Contactez nous',
      ),
    );
  }
}
