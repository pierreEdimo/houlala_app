import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';
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
        width: MediaQuery.of(context).size.width * .4,
        margin: const EdgeInsets.only(bottom: 20),
        child: CustomButton(
          onTap: onPressed,
          leadingIcon: HeroIcons.adjustmentsHorizontal,
          title: 'Filtrer',
        ),
      ),
    );
  }
}