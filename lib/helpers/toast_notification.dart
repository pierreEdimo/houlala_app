import 'package:flutter/material.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:toastification/toastification.dart';

class CustomToastNotification {
  static void showSuccessFulAction(String message) {
    showCustomToast(message, ToastificationType.success);
  }

  static void showErrorAction(String message) {
    showCustomToast(message, ToastificationType.error);
  }

  static void showToast(String message, ToastificationType type) {
    showCustomToast(message, type);
  }

  static void showCustomToast(
    String message,
    ToastificationType type,
  ) {
    Color? color;

    switch (type) {
      case ToastificationType.error:
        color = Colors.red;
      case ToastificationType.success:
        color = const Color(0xFF339900);
      case ToastificationType.info:
        color = Colors.blue;
      case ToastificationType.warning:
        color = const Color(0xFFffcc00);
    }

    toastification.showCustom(
      alignment: Alignment.bottomCenter,
      autoCloseDuration: const Duration(seconds: 3),
      builder: (context, holder) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: radius,
            color: color,
          ),
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
