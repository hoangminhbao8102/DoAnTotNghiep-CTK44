import 'package:flutter/material.dart';

import '../forgot_password_gmail_screen/forgot_password_gmail_screen.dart';
import '../forgot_password_phone_screen/forgot_password_phone_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen ({Key? key}) : super(key: key);
  
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
                  Icons.lock,
                  color: Colors.orange,
                  size: 50,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'QUÊN MẬT KHẨU',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'CHỌN SỐ ĐIỆN THOẠI HAY EMAIL',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 30),
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
                  SizedBox(width: 30),
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
        padding: EdgeInsets.all(20),
      ),
      child: Icon(
        icon,
        size: 50,
        color: color,
      ),
    );
  }
}