import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final HeroIcons? leadingIcon;
  final String? title;
  final Color? color;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    this.onTap,
    this.leadingIcon,
    this.title,
    this.color,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
        decoration: BoxDecoration(
          color: color ?? Colors.orange,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroIcon(
              leadingIcon!,
              size: 17,
              color: Colors.white,
            ),
            const SizedBox(width: 5.0),
            Text(
              title!,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
