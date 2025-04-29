import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/auth/user_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_list_tile.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/column_headers.dart';
import 'package:houlala_app/shared_widgets/user_info_tile.dart';

class MyAccountScreen extends ConsumerWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    UserModel? currentUser = authController.connectedUser;

    return CustomScaffold(
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
        padding: const EdgeInsets.only(bottom: 110),
        child: CustomContainer(
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
                        CustomListTile(
                          onTap: () =>
                              Navigator.of(context).pushNamed('/myAddresses'),
                          leading: const Icon(
                            Icons.book_outlined,
                            size: 18,
                          ),
                          title: const Text('Mes adresses'),
                        ),
                        CustomListTile(
                          onTap: () {},
                          leading: const HeroIcon(
                            HeroIcons.lockClosed,
                            size: 18,
                          ),
                          title: const Text('Changer votre mot de passe'),
                        ),
                        CustomListTile(
                          onTap: () {},
                          leading: const HeroIcon(
                            HeroIcons.banknotes,
                            size: 18,
                          ),
                          title: const Text('Vendre sur Houla la'),
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
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ColumnHeaders(
                    title: 'Notifications par E-mail',
                  ),
                  CustomCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RichText(
                          text: TextSpan(
                            text:
                                "tous les courriels seront envoyés à l'adresse suivante: ",
                            style: GoogleFonts.poppins(color: Colors.black),
                            children: [
                              TextSpan(
                                text: currentUser!.email!,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
