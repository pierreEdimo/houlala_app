import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/screens/logged_in_cart_screen.dart';
import 'package:houlala_app/screens/logged_out_cart_screen.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/default_app_bar.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    bool loggedIn = authController.isLoggedIn;
    bool loading = authController.loading;

    return CustomScaffold(
      appBar: DefaultAppBar(
        navigationRoute: loggedIn ? '/notifications' : '/login',
      ),
      body: Builder(builder: (context) {
        if (loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return loggedIn
            ? const LoggedInCartScreen()
            : const LoggedOutCartScreen();
      }),
    );
  }
}
