import 'package:flutter/material.dart';
import 'package:smart_farm_app/data/api/api_client.dart';

import '../forgot_password_screen/forgot_password_screen.dart';
import '../register_screen/register_screen.dart'; // ignore_for_file: must_be_immutable

class LogInScreen extends StatelessWidget {
  final APIClient apiClient;

  LogInScreen({Key? key, required this.apiClient}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'ĐĂNG NHẬP',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                  },
                  child: Text(
                    'Quên mật khẩu ?',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('ĐĂNG NHẬP'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                },
                child: Text('ĐĂNG KÝ'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green, padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  side: BorderSide(color: Colors.green),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
