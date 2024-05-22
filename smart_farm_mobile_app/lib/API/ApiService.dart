// ignore_for_file: file_names, avoid_print
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'https://localhost:7265/api';

  Future<bool> login(String username, String password) async {
    try {
      var res = await http.post(
        Uri.parse('$baseUrl/Accounts/login'), // Adjust endpoint if needed
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'username': username, 'password': password}),
      );
      if (res.statusCode == 200) {
        // Handle response here, maybe save token
        return true;
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> register(Map<String, dynamic> userData) async {
    try {
      var res = await http.post(
        Uri.parse('$baseUrl/Accounts'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(userData),
      );
      return res.statusCode == 201; // Mã 201 cho biết tạo mới thành công
    } catch (e) {
      print('Error registering user: $e');
      return false;
    }
  }

  Future<List<dynamic>> fetchFarms() async {
    try {
      var response = await http.get(Uri.parse('$baseUrl/Farms'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load farms');
      }
    } catch (e) {
      throw Exception('Failed to fetch farms: $e');
    }
  }

  Future<Map<String, dynamic>> fetchFarmDetails(int farmId) async {
    try {
      var response = await http.get(Uri.parse('$baseUrl/Farms/$farmId'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load farm details');
      }
    } catch (e) {
      print('Error fetching farm details: $e');
      throw Exception('Failed to fetch farm details: $e');
    }
  }
}