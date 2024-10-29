import 'package:flutter/material.dart';
import 'package:houlala_app/features/sub_categories/models/sub_category.dart';
import 'package:houlala_app/shared_widgets/sub_category_card.dart';

class VerticalSubCategoryGrid extends StatelessWidget {
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  final List<SubCategory>? subCategoryList;

  const VerticalSubCategoryGrid({
    super.key,
    this.subCategoryList,
    this.physics,
    this.shrinkWrap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      children: subCategoryList!
          .map(
            (subCategory) => SubCategoryCard(
              subCategory: subCategory,
            ),
          )
          .toList(),
    );
  }
}
