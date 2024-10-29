import 'package:flutter/material.dart';
import 'package:houlala_app/features/sellers/model/seller.dart';
import 'package:houlala_app/shared_widgets/seller_card.dart';

class VerticalSellersGrid extends StatelessWidget {
  final double? aspectRatio;
  final ScrollPhysics? physics;
  final bool? shrinkWrap;
  final List<Seller>? sellerList;

  const VerticalSellersGrid({
    super.key,
    this.physics,
    this.shrinkWrap,
    this.aspectRatio,
    this.sellerList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      childAspectRatio: aspectRatio ?? 1.0,
      crossAxisCount: 2,
      children: sellerList!
          .map((seller) => SellerCard(
                seller: seller,
              ))
          .toList(),
    );
  }
}
