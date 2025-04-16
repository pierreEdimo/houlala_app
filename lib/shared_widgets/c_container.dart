import 'package:flutter/material.dart';
import 'package:houlala_app/helpers/constants.dart';

class CustomContainer extends StatelessWidget {
  final bool? loading;
  final Widget? child;
  final EdgeInsets? padding;

  const CustomContainer(
      {super.key, this.loading, this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (loading == true) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      return child != null
          ? Padding(
              padding: padding ??
                  const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: child,
            )
          : Container();
    });
  }
}
