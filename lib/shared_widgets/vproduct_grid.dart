import 'package:flutter/material.dart';
import 'package:houlala_app/features/products/model/product.dart';
import 'package:houlala_app/shared_widgets/product_card.dart';

class VerticalProductGrid extends StatelessWidget {
  final bool? shrinkWrap;
  final List<Product>? productList;
  final ScrollPhysics? physics;
  final double? aspectRatio;

  const VerticalProductGrid({
    super.key,
    this.shrinkWrap,
    this.productList,
    this.physics,
    this.aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      childAspectRatio: aspectRatio ?? 1.0,
      children: productList!
          .map(
            (product) => ProductCard(
              product: product,
            ),
          )
          .toList(),
    );
  }
}
