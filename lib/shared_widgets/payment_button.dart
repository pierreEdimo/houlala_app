import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:sizer/sizer.dart';

class PaymentButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const PaymentButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 30.w,
        margin: const EdgeInsets.only(bottom: 20),
        child: CustomButton(
          onPressed: onPressed,
          title: 'Payez',
          leadingIcon: HeroIcons.creditCard,
        ),
      ),
    );
  }
}
