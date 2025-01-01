import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;


  const CustomCard({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: child,
      ),
    );
  }
}
