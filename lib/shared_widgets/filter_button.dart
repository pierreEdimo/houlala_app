import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
import 'package:sizer/sizer.dart';
import 'c_button.dart';

class FilterButton extends ConsumerWidget {
  final VoidCallback? onPressed;

  const FilterButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 90.w,
        margin: const EdgeInsets.only(bottom: 20),
        child: CustomButton(
          onPressed: onPressed,
          leadingIcon: HeroIcons.adjustmentsHorizontal,
          title: 'Filtrer',
        ),
      ),
    );
  }
}
