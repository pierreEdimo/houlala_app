import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/args/category_args.dart';
import '../features/categories/model/categories.dart';

class CategoriesCard extends StatelessWidget {
  final Categories? categories;

  const CategoriesCard({
    super.key,
    this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed('${categories!.route}',
          arguments: CategoryArg(
            categoryName: categories!.name!,
            categoryId: categories!.id!,
          )),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'images/categories/${categories!.imageUrl}',
                height: 80,
              ),
              const SizedBox(height: 8),
              Flexible(
                child: Text(
                  categories!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
