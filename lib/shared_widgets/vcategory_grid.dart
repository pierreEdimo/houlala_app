import 'package:flutter/material.dart';
import 'package:houlala_app/features/categories/model/categories.dart';
import 'package:houlala_app/shared_widgets/categories_card.dart';

class VerticalCategoryGrid extends StatelessWidget {
  final List<Categories>? categoryList;
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
      children: categoryList!
          .map(
            (category) => CategoriesCard(
              categories: category,
            ),
          )
          .toList(),
    );
  }
}
