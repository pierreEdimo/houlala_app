import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/edit_info.dart';
import 'package:houlala_app/features/auth/auth_provider.dart';
import 'package:houlala_app/features/auth/login.dart';
import 'package:houlala_app/features/auth/register.dart';
import 'package:houlala_app/features/auth/user_model.dart';


class AuthController {
  final WidgetRef? ref;

  AuthController(this.ref) : super();

  void login(Login login) {
    ref!.read(authStateNotifierProvider.notifier).login(login);
  }

  void register(Register register) {
    ref!.read(authStateNotifierProvider.notifier).register(register);
  }

  void editUserInfo(EditInfo info) {
    ref!.read(authStateNotifierProvider.notifier).editUserInfo(info);
  }

  void setGastUserInfo(UserModel user) {
    ref!.read(authStateNotifierProvider.notifier).setGastUser(user);
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

  bool get hasUserInfo {
    return connectedUser!.firstName != null &&
        connectedUser!.lastName != null &&
        connectedUser!.phoneNumber != null;
  }

  bool get hasGastUserInfo {
    return gastUser!.firstName != null &&
        gastUser!.lastName != null &&
        gastUser!.phoneNumber != null;
  }

  UserModel? get connectedUser {
    return ref!.watch(authStateNotifierProvider).connectedUser;
  }

  UserModel? get gastUser {
    return ref!.watch(authStateNotifierProvider).gastUser;
  }
}
