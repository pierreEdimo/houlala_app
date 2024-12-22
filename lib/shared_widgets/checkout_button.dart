import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';

class CheckoutButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CheckoutButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        margin: const EdgeInsets.only(bottom: 20),
        child: CustomButton(
          onPressed: onPressed,
          title: 'Procedez au paiement',
          leadingIcon: HeroIcons.creditCard,
        ),
      ),
    );
  }
}
