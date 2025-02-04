import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/about_tile.dart';
import 'package:houlala_app/shared_widgets/condition_tile.dart';
import 'package:houlala_app/shared_widgets/login_tile.dart';
import 'package:houlala_app/shared_widgets/policy_tile.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/contact_us_tile.dart';

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
            : const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: horizontalPadding,
                      right: horizontalPadding,
                      top: verticalPadding,
                      bottom: 110),
                  child: Column(
                    spacing: verticalPadding,
                    children: [
                      CustomCard(
                        child: LoginTile(),
                      ),
                      CustomCard(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ContactUsTile(),
                              ConditionTile(),
                              PolicyTile(),
                              AboutTile(),
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
