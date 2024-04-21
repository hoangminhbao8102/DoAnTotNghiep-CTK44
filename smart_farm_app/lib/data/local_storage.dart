import 'package:shared_preferences/shared_preferences.dart';
import '../data/models/Account.dart'; // Import Account class
import '../data/models/Token.dart'; // Import Token class

class LocalStorage {
  static late SharedPreferences _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> writeToken(String? accessToken, String? tokenType) async {
    await _preferences.setString('access_token', accessToken ?? '');
    await _preferences.setString('token_type', tokenType ?? '');
  }

  static Token readToken() {
    String? accessToken = _preferences.getString('access_token');
    String? tokenType = _preferences.getString('token_type');
    if (accessToken != null && tokenType != null) {
      return Token(accessToken: accessToken, tokenType: tokenType);
    } else {
      return Token(accessToken: '', tokenType: '');
    }
  }

  static Future<void> writeAccount(Account account) async {
    if (account.id != null) {
      await _preferences.setInt('id', account.id!);
    }
    await _preferences.setString('username', account.username ?? '');
    await _preferences.setString('email', account.email ?? '');
    // Thêm các thuộc tính khác của tài khoản nếu cần
  }

  static Account readAccount() {
    int? accountId = _preferences.getInt('account_id');
    String? username = _preferences.getString('username');
    String? email = _preferences.getString('email');
    // Đọc các thuộc tính khác của tài khoản nếu cần
    if (accountId != null && username != null && email != null) {
      return Account(id: accountId, username: username, email: email);
    } else {
      return Account(id: 0, username: '', email: '');
    }
  }

  static Future<void> clear() async {
    await _preferences.clear();
  }
}