import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/args/category_args.dart';
import '../features/product_type/models/product_type.dart';

class ProductTypeCard extends StatelessWidget {
  final ProductType? subCategory;
  final int? categoryId;

  const ProductTypeCard({
    super.key,
    this.subCategory,
    this.categoryId,
  });

  bool isUrl(String imageUrl) {
    return Uri.parse(imageUrl).isAbsolute;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        subCategory!.route!,
        arguments: CategoryArg(
            productType: subCategory,
            categoryId: categoryId,
            categoryName: subCategory!.name),
      ),
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
                child: !isUrl(subCategory!.imageUrl!)
                    ? Image.asset(
                        height: 110,
                        'images/sub-categories/${subCategory!.imageUrl!}',
                      )
                    : Image.network(
                        height: 110,
                        subCategory!.imageUrl!,
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
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18),
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
