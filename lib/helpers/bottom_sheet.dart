import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomSheet {
  static void openBottomSheet() {
    Get.bottomSheet(
      Container(
        height: 50.h,
        width: 100.w,
        color: Colors.transparent,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0))),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('Hello'),
          ),
        ),
      ),
      isDismissible: true,
      enableDrag: false,
    );
  }
}
