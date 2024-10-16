import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/features/auth/providers/auth_provider.dart';

class AuthController {
  final WidgetRef? ref;

  AuthController(this.ref) : super();

  void login(Login login) {
    ref!.read(authStateNotifierProvider.notifier).login(login);
  }

  bool get isLoggedIn {
    return ref!.watch(authStateNotifierProvider).loggedIn;
  }

  void checkConnectedUser(){
    ref!.read(authStateNotifierProvider.notifier).checkAndSetConnectedUser();
  }
}
