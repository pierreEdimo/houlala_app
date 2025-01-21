import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/app_menu/model/app_menu.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/app_menu/controllers/app_menu_controller.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/auth/providers/auth_provider.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:houlala_app/main.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/card_tile.dart';
import 'package:houlala_app/shared_widgets/entity_card.dart';

class LoggedInScreen extends ConsumerWidget {
  const LoggedInScreen({super.key});

  Future<void> logout(WidgetRef ref) async {
    TokenHelper.deleteToken();
    ref.read(authStateNotifierProvider.notifier).checkAndSetConnectedUser();
    ref.read(authStateNotifierProvider.notifier).loggOut();
    navigatorKey.currentState?.pushReplacementNamed('/');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    UserMenuController userMenuController = UserMenuController(ref);

    UserModel? connectedUser = authController.connectedUser;
    List<AppMenu> entities = userMenuController.entities;
    String errorMessage = userMenuController.errorMessage;

    return Scaffold(
      body: CustomContainer(
        loading: authController.loading,
        errorMessage: authController.errorMessage,
        child: connectedUser != null
            ? SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: horizontalPadding,
                  right: horizontalPadding,
                  top: verticalPadding,
                  bottom: 110,
                ),
                child: Column(
                  spacing: verticalPadding,
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 23,
                      crossAxisSpacing: 8,
                      childAspectRatio: 1 / 0.7,
                      children: entities
                          .map(
                            (entity) => EntityCard(
                              entity: entity,
                            ),
                          )
                          .toList(),
                    ),
                    GridView.count(
                      crossAxisCount: 1,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      childAspectRatio: 6,
                      children: [
                        CardTile(
                          onTap: () => logout(ref),
                          title: Text(
                            'Se Deconnecter',
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
            )
            : Container(),
      ),
    );
  }
}
