import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

import 'c_list_tile.dart';

class LoggedOutScreen extends StatelessWidget {
  const LoggedOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContainer(
        loading: false,
        errorMessage: '',
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: horizontalPadding,
                right: horizontalPadding,
                top: verticalPadding,
                bottom: 110),
            child: Column(
              spacing: verticalPadding,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bienvenu sur Houlala',
                      style: GoogleFonts.indieFlower(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Nous vous remercions d'avoir telecharger l'application Houlala. Connectez-vous pour profiter de toutes les fonctionnalites d'Houlala.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.indieFlower(fontSize: 18),
                    )
                  ],
                ),
                CustomCard(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CustomListTile(
                          onTap: () =>
                              Navigator.of(context).pushNamed('/login'),
                          leading: const HeroIcon(
                            HeroIcons.arrowRightEndOnRectangle,
                            size: 18,
                          ),
                          title: const Text(
                            'Se Connecter',
                          ),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        CustomListTile(
                          onTap: () {},
                          leading: const HeroIcon(
                            HeroIcons.envelopeOpen,
                            size: 18,
                          ),
                          title: const Text('Contactez nous'),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        CustomListTile(
                          onTap: () {},
                          leading: const HeroIcon(
                            HeroIcons.shieldCheck,
                            size: 18,
                          ),
                          title: const Text('Condition de Confidentialité'),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                        ),
                        CustomListTile(
                          onTap: () {},
                          leading: const Icon(
                            Icons.info_outlined,
                            size: 18,
                          ),
                          title: const Text('Impressum'),
                        ),
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
