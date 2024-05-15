import 'package:flutter/material.dart';

import '../otp_phone_screen/otp_phone_screen.dart'; // ignore_for_file: must_be_immutable

class ForgotPasswordPhoneScreen extends StatelessWidget {
  ForgotPasswordPhoneScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(Icons.lock, size: 50, color: Colors.orange),
            ),
            SizedBox(height: 30),
            Text(
              'QUÊN MẬT KHẨU',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.green.withOpacity(0.1),
                hintText: 'Nhập số điện thoại',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => OtpPhoneScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: Text(
                'TIẾP TỤC',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
