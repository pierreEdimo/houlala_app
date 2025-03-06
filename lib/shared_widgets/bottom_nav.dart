import 'package:flutter/material.dart';
import 'package:houlala_app/shared_widgets/bottom_nav_button.dart';
import 'package:sizer/sizer.dart';

class BottomNav extends StatelessWidget {
  final List<BottomNavButton>? children;

  const BottomNav({
    super.key,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 80,
        width: 90.w,
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: children!,
            ),
          ),
        ),
      ),
    );
  }
}
