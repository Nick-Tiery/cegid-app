import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:http/http.dart';

import '../../app/resources/app_constants.dart';
import '../db/secure_storage/my_secure_storage_manager.dart';
import '../models/http/response_http_array_model.dart';
import '../models/http/response_http_single_model.dart';
import '../models/user_login/login_initial_model.dart';

class RestService {
  final MySecureStorageManager _mySecureStorageManager = Get.find();

  Future<ResponseHttpSingleModel?> makePostRequestLoginInitial(
      String type, LoginInitialModel? loginInitial) async {
    ResponseHttpSingleModel? responseHttp;
    final url = Uri.parse('${AppConstants.loginURL}/$type');
    final headers = {"Content-type": "application/json"};
    try {
      final response =
          await post(url, headers: headers, body: jsonEncode(loginInitial));
      responseHttp =
          ResponseHttpSingleModel.fromJson(json.decode(response.body));
      debugPrint('Status code: ${response.statusCode}');
      debugPrint('Body: ${response.body}');
    } catch (exception) {
      debugPrint('Exception: $exception');
    }

    return responseHttp;
  }

  Future<ResponseHttpArrayModel?> makePostRequestLoginArray(
      String type, LoginInitialModel? loginInitial) async {
    ResponseHttpArrayModel? responseHttp;
    final url = Uri.parse('${AppConstants.loginURL}/$type');
    final headers = {"Content-type": "application/json"};
    try {
      final response =
          await post(url, headers: headers, body: jsonEncode(loginInitial));
      responseHttp =
          ResponseHttpArrayModel.fromJson(json.decode(response.body));
      debugPrint('Status code: ${response.statusCode}');
      debugPrint('Body: ${response.body}');
    } catch (exception) {
      debugPrint('Exception: $exception');
    }

    return responseHttp;
  }

  Future<ResponseHttpSingleModel?> makePostRequestSingle(
      String type, dynamic object) async {
    ResponseHttpSingleModel? responseHttp;
    //final url = Uri.parse('${_controller.url.value}/$type');
    final url = Uri.parse('${AppConstants.loginURL}/$type');
    final token = await _mySecureStorageManager.getToken();
    final headers = {
      "Content-type": "application/json",
      'Authorization': 'Bearer $token'
    };
    try {
      final response =
          await post(url, headers: headers, body: jsonEncode(object));
      responseHttp =
          ResponseHttpSingleModel.fromJson(json.decode(response.body));
      debugPrint('Status code: ${response.statusCode}');
      debugPrint('Body: ${response.body}');
    } catch (exception) {
      debugPrint('Exception: $exception');
    }

    return responseHttp;
  }

  Future<ResponseHttpArrayModel?> makePostRequestArray(
      String type, dynamic object) async {
    ResponseHttpArrayModel? responseHttp;
    //final url = Uri.parse('${_controller.url.value}/$type');
    final url = Uri.parse('${AppConstants.loginURL}/$type');
    final token = await _mySecureStorageManager.getToken();
    final headers = {
      "Content-type": "application/json",
      'Authorization': 'Bearer $token'
    };
    try {
      final response =
          await post(url, headers: headers, body: jsonEncode(object));
      responseHttp =
          ResponseHttpArrayModel.fromJson(json.decode(response.body));
      debugPrint('Status code: ${response.statusCode}');
      debugPrint('Body: ${response.body}');
    } catch (exception) {
      debugPrint('Exception: $exception');
    }

    return responseHttp;
  }
}
