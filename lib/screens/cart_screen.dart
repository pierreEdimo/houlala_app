import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/screens/logged_in_cart_screen.dart';
import 'package:houlala_app/screens/logged_out_cart_screen.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    bool loading = authController.loading;
    bool loggedIn = authController.isLoggedIn;

    if (loading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: loggedIn ? const LoggedInCartScreen() : const LoggedOutCartScreen(),
    );
  }
}
