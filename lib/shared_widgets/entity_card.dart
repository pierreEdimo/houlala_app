import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/app_menu/app_menu.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class EntityCard extends StatelessWidget {
  final AppMenu? entity;

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
            child: CustomCard(
              child: Center(
                child: Image.asset(
                  'images/user-menu/${entity!.thumbnail}',
                ),
              ),
            ),
          ),
          Text(
            entity!.title!,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
