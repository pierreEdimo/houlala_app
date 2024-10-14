import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/categories/model/categories.dart';
import '../helpers/constants.dart';

class CategoriesCard extends StatelessWidget {
  final Categories? categories;

  const CategoriesCard({
    super.key,
    this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed('/categoryDetail', arguments: categories!.id!),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(categories!.imageUrl!),
              ),
              const SizedBox(width: horizontalPadding),
              Flexible(
                child: Text(
                  categories!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
