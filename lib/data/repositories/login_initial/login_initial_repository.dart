import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/use_cases/login_initial/login_initial_use_case.dart';
import '../../datasources/login_initial/login_initial_datasource.dart';
import '../../models/user_login/login_initial_model.dart';

class LoginInitialRepositoryImpl implements LoginInitialRepository {
  final LoginInitialDatasourceImpl loginInitialDatasourceImpl;

  LoginInitialRepositoryImpl({
    required this.loginInitialDatasourceImpl,
  });

  @override
  Future<(bool?, String?, String?)> loginInitial(
      {LoginInitialModel? loginInitial}) async {
    bool? state;
    String? url;
    String? error;

    try {
      (state, url, error) = await loginInitialDatasourceImpl.loginInitial(
        loginInitial: loginInitial!,
      );
    } catch (exception) {
      debugPrint('Login Initial Repository Impl: $exception');
    }

    return (state, url, error);
  }
}
