import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

import 'c_list_tile.dart';

class LoggedOutScreen extends ConsumerWidget {
  const LoggedOutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    String errorMessage = authController.errorMessage;

    return Scaffold(
      body: CustomContainer(
        loading: false,
        errorMessage: errorMessage,
        child: errorMessage.isNotEmpty
            ? Container()
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: horizontalPadding,
                      right: horizontalPadding,
                      top: verticalPadding,
                      bottom: 110),
                  child: Column(
                    spacing: verticalPadding,
                    children: [
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
                                title:
                                    const Text('Condition de Confidentialité'),
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
