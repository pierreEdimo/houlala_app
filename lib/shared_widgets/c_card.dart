import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;


  const CustomCard({
    super.key,
    this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Container(
        padding: padding ?? const EdgeInsets.all(15.0),
        child: child,
      ),
    );
  }
}
