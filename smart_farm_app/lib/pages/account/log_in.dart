import 'package:flutter/material.dart';
import 'package:smart_farm_app/pages/account/forgot_password.dart';
import 'package:smart_farm_app/pages/account/register.dart';
import 'package:smart_farm_app/pages/home_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ĐĂNG NHẬP"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 25,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffd9d9d9),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  const ForgotPasswordScreen();
                },
                child: const Text(
                  "Quên mật khẩu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/image.png",
                width: 215,
                height: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                "Username",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your username',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  const HomePage();
                },
                child: const Text("ĐĂNG NHẬP"),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  const RegisterScreen();
                },
                child: const Text("ĐĂNG KÝ"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
