import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:houlala_app/main.dart';
import 'package:houlala_app/shared_widgets/c_button.dart';
import 'package:sizer/sizer.dart';

class BottomSheet {
  static void openBottomSheet(Widget child) {
    Get.bottomSheet(
      Container(
        width: 100.w,
        height: 15.h,
        color: Colors.transparent,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: child,
          ),
        ),
      ),
      isDismissible: false,
      enableDrag: false,
    );
  }

  static void openBottomSheetOnSuccess() {
    openBottomSheet(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: const Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                Text('Votre produit a ete ajoute au panier avec succes.')
              ],
            ),
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: CustomButton(
                  onPressed: () => navigatorKey.currentState?.pop(),
                  color: Colors.grey,
                  title: 'Continuer',
                ),
              ),
              Expanded(
                child: CustomButton(
                  onPressed: () => navigatorKey.currentState?.popAndPushNamed('/cart'),
                  title: 'Panier',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
