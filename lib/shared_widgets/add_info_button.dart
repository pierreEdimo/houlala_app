import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sizer/sizer.dart';

class AddInfoButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;

  const AddInfoButton({
    super.key,
    this.onPressed,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 9.h,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeroIcon(HeroIcons.plus),
            Text(title!)
          ],
        ),
      ),
    );
  }
}
