import 'package:flutter/material.dart';
import 'package:houlala_app/features/category/model/category_model.dart';
import 'package:houlala_app/shared_widgets/category_card.dart';

class VerticalCategoryGrid extends StatelessWidget {
  final List<CategoryModel>? categoryList;
  final bool? shrinkWrap;
  final double? aspectRatio;
  final ScrollPhysics? physics;

  const VerticalCategoryGrid({
    super.key,
    this.aspectRatio,
    this.shrinkWrap,
    this.categoryList,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: shrinkWrap ?? false,
      childAspectRatio: aspectRatio ?? 1.0,
      physics: physics,
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: categoryList!
          .map(
            (category) => CategoryCard(
              category: category,
            ),
          )
          .toList(),
    );
  }
}
