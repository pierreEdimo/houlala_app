import 'package:flutter/material.dart';
import 'package:houlala_app/features/category/model/category_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/category_card.dart';

class CategoryGrid extends StatelessWidget {
  final List<CategoryModel>? categoryList;
  final bool? shrinkWrap;
  final double? aspectRatio;
  final ScrollPhysics? physics;
  final EdgeInsets? padding;

  const CategoryGrid({
    super.key,
    this.aspectRatio,
    this.shrinkWrap,
    this.categoryList,
    this.physics,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: shrinkWrap ?? false,
      childAspectRatio: aspectRatio ?? 1.0,
      physics: physics,
      crossAxisCount: 2,
      crossAxisSpacing: horizontalPadding,
      mainAxisSpacing: verticalPadding,
      padding: padding ?? const EdgeInsets.only(bottom: 110),
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
