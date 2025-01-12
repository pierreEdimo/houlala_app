import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ProductList extends StatelessWidget {
  final List<Widget>? productList;
  final bool? shrinkWrap;
  final ScrollPhysics? scrollPhysics;
  final EdgeInsets? padding;

  const ProductList({
    super.key,
    this.productList,
    @Default(false) this.shrinkWrap,
    this.scrollPhysics,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: padding,
      shrinkWrap: shrinkWrap!,
      physics: scrollPhysics,
      children: productList!,
    );
  }
}
