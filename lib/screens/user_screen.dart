import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:houlala_app/main.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  Future<void> logout() async {
    TokenHelper.deleteToken();
    navigatorKey.currentState?.pushNamed('/login');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    UserModel? connectedUser = authController.connectedUser;

    return Scaffold(
      body: CustomContainer(
        loading: authController.loading,
        errorMessage: authController.errorMessage,
        child: connectedUser != null
            ? Center(
                child: Text(connectedUser.email!),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
