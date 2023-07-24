import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/login_token/login_token_use_case.dart';
import '../../datasources/login_token/login_token_datasource.dart';
import '../../models/user_login/login_initial_model.dart';
import '../../models/user_login/token_model.dart';

class LoginTokenRepositoryImpl implements LoginTokenRepository {
  final LoginTokenDatasourceImpl loginTokenDatasourceImpl;

  LoginTokenRepositoryImpl({
    required this.loginTokenDatasourceImpl,
  });

  @override
  Future<(bool?, TokenModel?, String?)> loginToken(
      {LoginInitialModel? loginInitial}) async {
    bool? state;
    TokenModel? token;
    String? error;

    try {
      (state, token, error) = await loginTokenDatasourceImpl.loginToken(
        loginInitial: loginInitial!,
      );
    } catch (exception) {
      debugPrint('Login Token Repository Impl: $exception');
    }

    return (state, token, error);
  }
}
