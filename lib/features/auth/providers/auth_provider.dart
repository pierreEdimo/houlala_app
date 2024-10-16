import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/features/auth/model/user_token.dart';
import 'package:houlala_app/features/auth/repositories/auth_repository.dart';
import 'package:houlala_app/features/auth/state/auth_state.dart';
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
    try {
      Response response = await authRepository.login(login);
      if (response.statusCode == HttpStatus.accepted) {
        UserToken userToken = UserToken.fromJson(jsonDecode(response.body));
        TokenHelper.saveToken(userToken.token!);
        state = state.copyWith(token: userToken.token!);
        navigatorKey.currentState?.pushReplacementNamed('/');
      }
    } catch (exception) {
      if (kDebugMode) {
        print(exception);
      }
    }
  }

  Future<void> checkAndSetConnectedUser() async {
    state = state.copyWith(loading: true);
    String? token = await TokenHelper.getToken();
    if (token!.isNotEmpty) {
      print('test');
      state = state.copyWith(loggedIn: true, loading: false);
    } else {
      navigatorKey.currentState?.pushNamed('/login');
    }
  }
}
