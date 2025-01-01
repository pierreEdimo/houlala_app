import 'package:flutter/material.dart';
import 'package:houlala_app/helpers/toast_notification.dart';

class CustomContainer extends StatefulWidget {
  final bool? loading;
  final String? errorMessage;
  final Widget? child;

  const CustomContainer(
      {super.key, this.loading, this.errorMessage, this.child});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.errorMessage!.isNotEmpty) {
        ToastNotification.showErrorAction(widget.errorMessage!);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.loading != null && widget.loading == true) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return widget.child ?? Container();
  }
}
