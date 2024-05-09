import '../../data/models/Farm.dart';

class Account {
  int id;
  String fullName;
  String address;
  String phoneNumber;
  String email;
  String username;
  String password;
  List<Farm> farms;

  Account({
    required this.id,
    required this.fullName,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.username,
    required this.password,
    required this.farms,
  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'],
      fullName: json['fullName'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
      farms: (json['farms'] as List<dynamic>).map((farmJson) => Farm.fromJson(farmJson)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullName': fullName,
      'address': address,
      'phoneNumber': phoneNumber,
      'email': email,
      'username': username,
      'password': password,
      'farms': farms.map((farm) => farm.toJson()).toList(),
    };
  }
}