import 'package:flutter/material.dart'; // ignore_for_file: must_be_immutable

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

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
                  'ĐĂNG KÝ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                _buildTextField(
                  hintText: 'Họ và tên người dùng',
                  icon: Icons.person,
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Địa chỉ',
                  icon: Icons.home,
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Số điện thoại',
                  icon: Icons.phone,
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Email',
                  icon: Icons.email,
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Username',
                  icon: Icons.person,
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Nhập lại Password',
                  icon: Icons.lock,
                  isPassword: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ĐĂNG KÝ'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
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
        suffixIcon: isPassword ? Icon(Icons.visibility) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
