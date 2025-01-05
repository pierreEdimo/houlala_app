import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class CustomToastNotification {
  static void showSuccessFulAction(String message) {
    toastification.show(
      title: const Text('Succes'),
      autoCloseDuration: const Duration(seconds: 3),
      type: ToastificationType.success,
      alignment: Alignment.bottomCenter,
      style: ToastificationStyle.fillColored,
      description: Text(message)
    );
  }

  static void showErrorAction(String message) {
    toastification.show(
      title: const Text('Erreur'),
      autoCloseDuration: const Duration(seconds: 3),
      type: ToastificationType.error,
      alignment: Alignment.bottomCenter,
      style: ToastificationStyle.fillColored,
      description: Text(message)
    );
  }
}