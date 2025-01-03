import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/checkout_button.dart';

class LoggedOutCartScreen extends StatelessWidget {
  const LoggedOutCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          'Panier',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Stack(
        children: [
          CheckoutButton(
            onPressed: () => Navigator.of(context).pushNamed('/gastCheckout'),
          )
        ],
      ),
    );
  }
}
