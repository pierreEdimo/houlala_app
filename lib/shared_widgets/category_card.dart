import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/args/category_args.dart';
import 'package:houlala_app/features/category/category_model.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel? category;

  const CategoryCard({
    super.key,
    this.category,
  });

  bool isUrl(String imageUrl) {
    return Uri
        .parse(imageUrl)
        .isAbsolute;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed('${category!.route}',
              arguments: CategoryArg(
                categoryName: category!.name!,
                categoryId: category!.dbId!,
              )),
      child: CustomCard(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            !isUrl(category!.imageUrl!)
                ? Image.asset(
              'images/categories/${category!.imageUrl}',
              height: 80,
            )
                : Image.network(
              category!.imageUrl!,
              height: 80,
            ),
            Flexible(
              child: Text(
                category!.name!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
