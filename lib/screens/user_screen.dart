import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/controllers/auth_controller.dart';


class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthController authController = AuthController(ref);
    return  Scaffold(
      body: Center(
        child: Text('${authController.isLoggedIn}'),
      ),
    );
  }
}
