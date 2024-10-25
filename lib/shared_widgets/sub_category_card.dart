import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../features/sub_categories/models/sub_category.dart';

class SubCategoryCard extends StatelessWidget {
  final SubCategory? subCategory;

  const SubCategoryCard({
    super.key,
    this.subCategory,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed('/subCategoryDetail', arguments: subCategory),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150.0),
              ),
              child: Center(
                child: SizedBox(
                  height: 110,
                  child: Image.asset(
                    'images/sub-categories/${subCategory!.imageUrl!}',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 1,
                color: const Color(0xFFf4efe8),
                child: Center(
                  child: Text(
                    subCategory!.name!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
