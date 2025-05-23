import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';

class NoStoreScreen extends StatelessWidget {
  const NoStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryArg =
        ModalRoute.of(context)!.settings.arguments as CategoryArg;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          categoryArg.categoryName!,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 22
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Pas de magasin disponible',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
