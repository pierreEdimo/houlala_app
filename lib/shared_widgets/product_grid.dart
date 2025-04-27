import 'package:flutter/material.dart';
import 'package:houlala_app/features/products/product.dart';
import 'package:houlala_app/shared_widgets/product_card.dart';

class VerticalProductGrid extends StatelessWidget {
  final bool? shrinkWrap;
  final List<Product>? productList;
  final ScrollPhysics? physics;
  final double? aspectRatio;
  final EdgeInsets? padding;

  const VerticalProductGrid({
    super.key,
    this.shrinkWrap,
    this.productList,
    this.physics,
    this.aspectRatio,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: shrinkWrap ?? false,
      padding: padding ?? const EdgeInsets.only(bottom: 110),
      physics: physics,
      childAspectRatio: aspectRatio ?? 1.0,
      mainAxisSpacing: 11,
      crossAxisSpacing: 11,
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
