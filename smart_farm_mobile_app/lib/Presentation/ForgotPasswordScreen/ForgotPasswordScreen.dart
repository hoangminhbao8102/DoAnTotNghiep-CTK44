// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'ForgotPasswordEmailScreen/ForgotPasswordEmailScreen.dart';
import 'ForgotPasswordPhoneScreen/ForgotPasswordPhoneScreen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.lock,
                  color: Colors.orange,
                  size: 50,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'QUÊN MẬT KHẨU',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'CHỌN SỐ ĐIỆN THOẠI HAY EMAIL',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildOptionButton(
                    icon: Icons.phone,
                    color: Colors.green,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPhoneScreen()));
                    },
                  ),
                  const SizedBox(width: 30),
                  _buildOptionButton(
                    icon: Icons.email,
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordEmailScreen()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton({required IconData icon, required Color color, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: color, 
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        side: BorderSide(color: color),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
      ),
      child: Icon(
        icon,
        size: 50,
        color: color,
      ),
    );
  }
}