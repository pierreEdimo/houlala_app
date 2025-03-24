import 'package:flutter/material.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import 'package:houlala_app/shared_widgets/local_card.dart';

class VerticalLocalsGrid extends StatelessWidget {
  final double? aspectRatio;
  final ScrollPhysics? physics;
  final bool? shrinkWrap;
  final List<LocalModel>? localList;

  const VerticalLocalsGrid({
    super.key,
    this.physics,
    this.shrinkWrap,
    this.aspectRatio,
    this.localList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      childAspectRatio: aspectRatio ?? 1.0,
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: localList!
          .map((seller) => LocalCard(
                local: seller,
              ))
          .toList(),
    );
  }
}
