import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';

class CardTile extends StatelessWidget {
  final Widget? title;
  final VoidCallback? onTap;
  final HeroIcon? suffixIcon;

  const CardTile({
    super.key,
    this.title,
    this.onTap,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomCard(
        padding: const EdgeInsets.symmetric(horizontal: 11),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            title ?? Container(),
            suffixIcon ?? Container()
          ],
        ),
      )
    );
  }
}
