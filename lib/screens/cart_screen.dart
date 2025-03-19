import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';
import 'package:houlala_app/screens/logged_in_cart_screen.dart';
import 'package:houlala_app/screens/logged_out_cart_screen.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';

import '../helpers/search_args.dart';
import '../shared_widgets/c_app_bar.dart';
import '../shared_widgets/search_input_button.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    bool loggedIn = authController.isLoggedIn;
    bool loading = authController.loading;

    return CustomScaffold(
      appBar: CustomAppBar(
        title: SearchInputButton(
          onPressed: () => Navigator.pushNamed(
            context,
            '/searchProducts',
            arguments: SearchArgs(
                categoryId: null, productTypeId: null, sellerId: null),
          ),
          hinText: 'Rechercher des produits',
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(loggedIn ? '/notifications' : '/login'),
            icon: const HeroIcon(HeroIcons.bell),
          )
        ],
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
