import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SeeMoreButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap: onTap,
        child: const Text(
          'Voir plus',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}
