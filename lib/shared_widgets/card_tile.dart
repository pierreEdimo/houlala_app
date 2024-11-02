import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

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
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Colors.grey.shade200), 
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title ?? Container(),
              suffixIcon ?? Container()
            ],
          ),
        ),
      ),
    );
  }
}
