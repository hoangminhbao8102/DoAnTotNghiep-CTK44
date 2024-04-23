import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smart_farm_app/data/models/Account.dart';

import '../models/CheckAndDetail.dart';

class APIClient extends ChangeNotifier {
  static const String urlAPI = 'https://farmmanage.somee.com';

  Account? _loggedInUser;

  Account? get loggedInUser => _loggedInUser;

  Future<void> login(String username, String password) async {
    // Call your login API here, for demonstration purposes let's assume success
    _loggedInUser = Account(username: username, password: password);
    notifyListeners();
  }

  Future<void> register(Account account) async {
    // Call your register API here, for demonstration purposes let's assume success
    _loggedInUser = account;
    notifyListeners();
  }

  static Future<CheckAndDetail> forgotPasswordPhone(String phone) async {
    CheckAndDetail reg = CheckAndDetail();
    final response = await http.post(
      Uri.parse(urlAPI + '/api/v1/auth/user/forget_password'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"phone": phone}),
    );

    if (response.statusCode == 202) {
      reg.check = true;
      reg.detail =
          json.decode(utf8.decode(response.bodyBytes))['detail'] as String;
    } else if (response.statusCode == 400) {
      reg.check = false;
      String error =
          json.decode(utf8.decode(response.bodyBytes))['detail'] as String;
      reg.detail = error;
    } else {
      reg.check = false;
      reg.detail = 'Đã có lỗi xảy ra! Vui lòng thử lại';
    }
    return reg;
  }

  static Future<CheckAndDetail> forgotPasswordEmail(String email) async {
    CheckAndDetail reg = CheckAndDetail();
    final response = await http.post(
      Uri.parse(urlAPI + '/api/v1/auth/user/forget_password'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"email": email}),
    );

    if (response.statusCode == 202) {
      reg.check = true;
      reg.detail =
          json.decode(utf8.decode(response.bodyBytes))['detail'] as String;
    } else if (response.statusCode == 400) {
      reg.check = false;
      String error =
          json.decode(utf8.decode(response.bodyBytes))['detail'] as String;
      reg.detail = error;
    } else {
      reg.check = false;
      reg.detail = 'Đã có lỗi xảy ra! Vui lòng thử lại';
    }
    return reg;
  }
}