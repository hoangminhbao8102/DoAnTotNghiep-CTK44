// ignore_for_file: file_names

import 'package:flutter/material.dart'; // ignore_for_file: must_be_immutable

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController fullnameController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordAuthenticationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'ĐĂNG KÝ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  hintText: 'Họ và tên người dùng',
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Địa chỉ',
                  icon: Icons.home,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Số điện thoại',
                  icon: Icons.phone,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Email',
                  icon: Icons.email,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Username',
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Nhập lại Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('ĐĂNG KÝ'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, required IconData icon, bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}