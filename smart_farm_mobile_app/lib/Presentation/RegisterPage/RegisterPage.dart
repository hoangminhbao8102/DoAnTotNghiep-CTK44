// ignore_for_file: file_names, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';

//import '../../API/ApiService.dart';
import '../../Data/Data.dart';
import '../../Models/Account.dart';
import '../LoginPage/LoginPage.dart'; // ignore_for_file: must_be_immutable

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  //final _apiService = ApiService();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController = TextEditingController();

  void _register() async {
    if (_passwordController.text == _passwordConfirmationController.text) {
      var newAccount = Account(
        fullName: _nameController.text,
        email: _emailController.text,
        username: _usernameController.text,
        password: _passwordController.text,
        address: _addressController.text,
        phoneNumber: _phoneController.text
      );

      var accounts = initializeAccounts();
      accounts.add(newAccount);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Đăng ký thành công'),
          content: const Text('Tài khoản của bạn đã đăng ký'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()), // Assume LoginPage exists
                );
              },
              child: const Text('ĐĂNG NHẬP NGAY'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Lỗi'),
          content: const Text('Mất khẩu không hợp lệ.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ĐĂNG KÝ')),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                  controller: _nameController,
                  hintText: 'Họ và tên người dùng',
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _addressController,
                  hintText: 'Địa chỉ',
                  icon: Icons.home,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _phoneController,
                  hintText: 'Số điện thoại',
                  icon: Icons.phone,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _emailController,
                  hintText: 'Email',
                  icon: Icons.email,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _usernameController,
                  hintText: 'Username',
                  icon: Icons.person,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                _buildTextField(
                  controller: _passwordConfirmationController,
                  hintText: 'Nhập lại Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _register,
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

  Widget _buildTextField({required TextEditingController controller, required String hintText, required IconData icon, bool isPassword = false}) {
    return TextField(
      controller: controller,  // Thêm dòng này để gán controller
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        suffixIcon: isPassword ? const Icon(Icons.visibility_off) : null,  // Sửa thành visibility_off để thống nhất logic ẩn/hiện password
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}