import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/features/auth/model/register.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/auth/providers/auth_provider.dart';

class AuthController {
  final WidgetRef? ref;

  AuthController(this.ref) : super();

  void login(Login login) {
    ref!.read(authStateNotifierProvider.notifier).login(login);
  }

  void register(Register register) {
    ref!.read(authStateNotifierProvider.notifier).register(register);
  }

  String get errorMessage {
    return ref!.watch(authStateNotifierProvider).errorMessage;
  }

  bool get isLoggedIn {
    return ref!.watch(authStateNotifierProvider).loggedIn;
  }

  bool get loading {
    return ref!.watch(authStateNotifierProvider).loading;
  }

  UserModel? get connectedUser {
    return ref!.watch(authStateNotifierProvider).connectedUser;
  }
}
