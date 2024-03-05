import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/log_in.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ĐĂNG KÝ"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Họ và tên người dùng",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(),
            const SizedBox(height: 10),
            const Text(
              "Địa chỉ",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(),
            const SizedBox(height: 10),
            const Text(
              "Số điện thoại",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(),
            const SizedBox(height: 10),
            const Text(
              "Email",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(),
            const SizedBox(height: 10),
            const Text(
              "Username",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(),
            const SizedBox(height: 10),
            const Text(
              "Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(obscureText: true),
            const SizedBox(height: 10),
            const Text(
              "Nhập lại Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 10),
            buildInputField(obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                const LoginScreen();// Handle registration logic
              },
              child: const Text("ĐĂNG KÝ"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputField({bool obscureText = false}) {
    return TextFormField(
      obscureText: obscureText,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
    );
  }
}
