import 'package:flutter/material.dart';

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
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Error'),
            content: Text(widget.errorMessage!),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
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
