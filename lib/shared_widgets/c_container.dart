import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:toastification/toastification.dart';

class CustomContainer extends StatelessWidget {
  final bool? loading;
  final String? errorMessage;
  final Widget? child;

  const CustomContainer(
      {super.key, this.loading, this.errorMessage, this.child});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (errorMessage!.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          CustomToastNotification.showCustomToast(
              errorMessage!, ToastificationType.error);
        });
      }

      if (loading != null && loading == true) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }

      return child ?? Container();
    });
  }
}
