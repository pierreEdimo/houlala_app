import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/screens/c_list_tile.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:houlala_app/shared_widgets/user_info_tile.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(
            HeroIcons.chevronLeft,
          ),
        ),
        title: Text(
          'Options',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(
          spacing: verticalPadding,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ColumnHeaders(
                  title: 'Informations personnelles',
                ),
                CustomCard(
                  child: Column(
                    children: [
                      const UserInfoTile(),
                      const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      CustomListTile(
                        onTap: () => Navigator.of(context).pushNamed('/myAddresses'),
                        leading: const Icon(
                          Icons.book_outlined,
                          size: 18,
                        ),
                        title: const Text('Mes adresses'),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      CustomListTile(
                        onTap: () {},
                        leading: const HeroIcon(
                          HeroIcons.lockClosed,
                          size: 18,
                        ),
                        title: const Text('Changer votre mot de passe'),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      CustomListTile(
                        onTap: () {},
                        leading: const HeroIcon(
                          HeroIcons.banknotes,
                          size: 18,
                        ),
                        title: const Text('Vendre sur Houla la'),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                      ),
                      CustomListTile(
                        onTap: () {},
                        leading: const HeroIcon(
                          HeroIcons.trash,
                          size: 18,
                          color: Colors.red,
                        ),
                        title: const Text(
                          'Supprimer votre compte',
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ColumnHeaders(title: 'Notifications',),
                CustomCard()
              ],
            )
          ],
        ),
      ),
    );
  }
}
