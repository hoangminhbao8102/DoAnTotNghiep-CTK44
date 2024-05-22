// ignore_for_file: file_names

import 'Farm.dart';

class Account {
  final String fullName;
  final String address;
  final String phoneNumber;
  final String email;
  final String username;
  final String password;
  final List<Farm> farms;

  Account({
    required this.fullName,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.username,
    required this.password,
    required this.farms,
  });

  /*// Chuyển đổi từ JSON sang đối tượng Dart
  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'],
      fullName: json['fullName'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
      farms: (json['farms'] as List<dynamic>).map((e) => Farm.fromJson(e)).toList(),
    );
  }

  // Chuyển đổi từ đối tượng Dart sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'address': address,
      'phoneNumber': phoneNumber,
      'email': email,
      'username': username,
      'password': password,
      'farms': farms.map((e) => e.toJson()).toList(),
    };
  }*/
}