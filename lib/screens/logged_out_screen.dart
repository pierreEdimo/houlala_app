import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

import '../shared_widgets/card_tile.dart';

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
                GridView.count(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  crossAxisCount: 1,
                  childAspectRatio: 6,
                  children: [
                    CardTile(
                      onTap: () => Navigator.of(context).pushNamed('/login'),
                      title: Text(
                        'Se Connecter',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      suffixIcon: const HeroIcon(
                        HeroIcons.chevronRight,
                      ),
                    ),
                    CardTile(
                      onTap: () {},
                      title: Text(
                        'Contactez nous',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      suffixIcon: const HeroIcon(
                        HeroIcons.chevronRight,
                      ),
                    ),
                    CardTile(
                      onTap: () {},
                      title: Text(
                        'Condition de Confidentialité',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      suffixIcon: const HeroIcon(
                        HeroIcons.chevronRight,
                      ),
                    ),
                    CardTile(
                      onTap: () {},
                      title: Text(
                        'Impressum',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      suffixIcon: const HeroIcon(
                        HeroIcons.chevronRight,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
