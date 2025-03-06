import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class BottomNavButton extends StatelessWidget {
  final bool? selected;
  final Color? selectedColor;
  final Color? color;
  final VoidCallback? onPressed;
  final HeroIcons? icon;

  const BottomNavButton({
    super.key,
    this.color,
    this.selected,
    this.selectedColor,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: HeroIcon(
        icon!,
        color: selected! ? selectedColor : color,
        style: selected! ? HeroIconStyle.solid : HeroIconStyle.outline,
      ),
    );
  }
}
