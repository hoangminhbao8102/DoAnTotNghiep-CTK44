class Account {
  int? id;
  String? name;
  String? location;
  String? phone;
  String? email;
  String? username;
  String? password;

  Account({
    this.id,
    this.name,
    this.location,
    this.phone,
    this.email,
    this.username,
    this.password
  });

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    phone = json['phone'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
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