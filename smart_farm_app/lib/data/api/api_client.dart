import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_farm_app/data/local_storage.dart';
import 'package:smart_farm_app/data/models/Account.dart';
import 'package:smart_farm_app/data/models/Token.dart';

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
}