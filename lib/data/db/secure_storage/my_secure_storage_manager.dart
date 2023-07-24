import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gestiona3w/data/models/user_login/login_initial_model.dart';

class MySecureStorageManager {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final String kToken = 'token';
  final String kLoginInitial = 'loginInitial';

  Future<String?> getToken() async {
    final String? token = await storage.read(key: kToken);
    return token ?? '';
  }

  Future<void> setToken(String? token) async {
    await storage.write(key: kToken, value: token);
  }

  Future<LoginInitialModel?> getLoginInitial() async {
    final LoginInitialModel loginInitialModel = LoginInitialModel.fromJson(
        json.decode((await storage.read(key: kLoginInitial))!));
    return loginInitialModel;
  }

  Future<void> setLoginInitial(LoginInitialModel? loginInitialModel) async {
    await storage.write(
        key: kLoginInitial, value: json.encode(loginInitialModel));
  }
}
