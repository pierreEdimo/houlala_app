import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/edit_info.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/features/auth/model/register.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/auth/model/user_token.dart';
import 'package:houlala_app/features/auth/repositories/auth_repository.dart';
import 'package:houlala_app/features/auth/state/auth_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:houlala_app/main.dart';
import 'package:http/http.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository());

final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
        (ref) => AuthStateNotifier(ref.watch(authRepositoryProvider)));

final class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;

  AuthStateNotifier(this.authRepository) : super(AuthState()) {
    checkAndSetConnectedUser();
  }

  Future<void> login(Login login) async {
    final Response response = await authRepository.login(login);
    if (response.statusCode == HttpStatus.ok) {
      UserToken userToken = UserToken.fromJson(jsonDecode(response.body));
      TokenHelper.saveToken(userToken.token!);
      checkAndSetConnectedUser(userToken: userToken.token);
      navigatorKey.currentState!.pushReplacementNamed('/');
    } else {
      if (kDebugMode) {
        print(response.body);
      }
      CustomToastNotification.showErrorAction(
          "Erreur lors la connexion a votre compte. Veuillez réessayer plus tard.");
    }
  }

  Future<void> register(Register register) async {
    Response response = await authRepository.register(register);
    if (response.statusCode == HttpStatus.ok) {
      UserToken userToken = UserToken.fromJson(jsonDecode(response.body));
      TokenHelper.saveToken(userToken.token!);
      checkAndSetConnectedUser(userToken: userToken.token);
      navigatorKey.currentState!.pushReplacementNamed('/');
    } else {
      if (kDebugMode) {
        print(response.body);
        CustomToastNotification.showErrorAction(
            "Erreur lors la creation de votre compte. Veuillez réessayer plus tard.");
      }
    }
  }

  Future<void> editUserInfo(EditInfo info) async {
    Response response = await authRepository.editUserInfo(info);
    if (response.statusCode == HttpStatus.ok) {
      UserToken userToken = UserToken.fromJson(jsonDecode(response.body));
      TokenHelper.saveToken(userToken.token!);
      var currentUser = state.connectedUser;

      if (info.userName != null) {
        currentUser = currentUser!.copyWith(userName: info.userName);
      }

      if (info.email != null) {
        currentUser = currentUser!.copyWith(email: info.email);
      }

      if (info.lastName != null) {
        currentUser = currentUser!.copyWith(lastName: info.lastName);
      }

      if (info.firstName != null) {
        currentUser = currentUser!.copyWith(firstName: info.firstName);
      }

      if (info.phoneNumber != null) {
        currentUser = currentUser!.copyWith(phoneNumber: info.phoneNumber);
      }

      navigatorKey.currentState!.pop();

      state = state.copyWith(connectedUser: currentUser);
    } else {
      CustomToastNotification.showErrorAction(
          "Erreur lors de la mise a jour des informations.");
    }
  }

  Future<void> checkAndSetConnectedUser({String? userToken}) async {
    state = state.copyWith(loading: true);
    String? token = userToken ?? await TokenHelper.getToken();
    if (token != null) {
      UserModel userModel =
          await authRepository.fetchConnectedUser(userToken: userToken);
      state = state.copyWith(loggedIn: true, connectedUser: userModel);
    }
    state = state.copyWith(loading: false);
  }

  void loggOut() {
    state = state.copyWith(loggedIn: false);
  }
}
