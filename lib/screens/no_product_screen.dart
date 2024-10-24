import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';

class NoProductScreen extends StatelessWidget {
  const NoProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categorieName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          categorieName,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Pas de produits disponibles.",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
