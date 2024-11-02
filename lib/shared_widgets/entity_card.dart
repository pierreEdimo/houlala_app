import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/auth/model/user_menu.dart';

class EntityCard extends StatelessWidget {
  final UserMenu? entity;

  const EntityCard({
    super.key,
    this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(entity!.route!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: Center(
                child: Image.asset(
                  'images/user-menu/${entity!.thumbnail}',
                ),
              ),
            ),
          ),
          Text(
            entity!.title!,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
