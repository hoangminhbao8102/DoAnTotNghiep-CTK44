import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_farm_app/data/local_storage.dart';
import 'package:smart_farm_app/data/models/Account.dart';
import 'package:smart_farm_app/data/models/Token.dart';

import '../models/CheckAndDetail.dart';

class APIClient {
  static const String urlAPI = 'https://farmmanage.somee.com';

  static Future<bool> login(String username, String password) async {
    bool check = true;
    Token token = Token();
    Account account = Account();

    try {
      final response = await http.post(
        Uri.parse('$urlAPI/api/v1/auth/user/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        token = Token.fromJson(json.decode(response.body));
        account = Account.fromJson(json.decode(utf8.decode(response.bodyBytes))['user']);
        LocalStorage.writeToken(token.accessToken, token.tokenType);
        LocalStorage.writeAccount(account);
      } else {
        check = false;
      }
    } catch (e) {
      print('Error logging in: $e');
      check = false;
    }

    return check;
  }

  static Future<CheckAndDetail> signup(String name, String location, String email, String username, String phone, String password) async {
    CheckAndDetail reg = CheckAndDetail();
    final response = await http.post(
      Uri.parse(urlAPI + '/api/v1/auth/user/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "name": name,
        "location": location,
        "phone": phone,
        "email": email,
        "username": username,
        "password": password
      }),
    );
    if (response.statusCode == 202) {
      reg.check = true;
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