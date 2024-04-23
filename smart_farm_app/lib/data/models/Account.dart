class Account {
  final int? id;
  final String? name;
  final String? location;
  final String? phone;
  final String? email;
  final String username;
  final String password;

  Account({
    this.id,
    this.name,
    this.location,
    this.phone,
    this.email,
    required this.username,
    required this.password
  });

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      phone: json['phone'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['location'] = location;
    data['phone'] = phone;
    data['email'] = email;
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}