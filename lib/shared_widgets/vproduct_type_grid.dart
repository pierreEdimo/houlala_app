import 'package:flutter/material.dart';
import 'package:houlala_app/features/product_type/models/product_type.dart';
import 'package:houlala_app/shared_widgets/product_type_card.dart';

class VertiProductTypeGrid extends StatelessWidget {
  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  final List<ProductType>? productTypeList;
  final int? categoryId;

  const VertiProductTypeGrid({
    super.key,
    this.productTypeList,
    this.physics,
    this.shrinkWrap,
    this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      children: productTypeList!
          .map(
            (subCategory) => ProductTypeCard(
              categoryId: categoryId,
              subCategory: subCategory,
            ),
          )
          .toList(),
    );
  }
}