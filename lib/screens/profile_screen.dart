import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/screens/logged_out_screen.dart';
import 'package:houlala_app/screens/loggedin_screen.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    bool loading = authController.loading;
    bool isLoggedIn = authController.isLoggedIn;

    if (loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return CustomScaffold(
      body: isLoggedIn ? const LoggedInScreen() : const LoggedOutScreen(),
    );
  }
}
