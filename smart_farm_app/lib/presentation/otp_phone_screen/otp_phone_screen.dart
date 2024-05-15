import 'package:flutter/material.dart';

import '../set_password_screen/set_password_screen.dart';

class OtpPhoneScreen extends StatelessWidget {
  const OtpPhoneScreen({Key? key}): super(key: key);

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
              'NHẬP OTP',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Một mã code 4 số đã được gửi tới điện thoại của bạn',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(),
                OtpInput(),
                OtpInput(),
                OtpInput(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Không nhận được mã?',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    // Xử lý gửi lại mã
                  },
                  child: Text(
                    'Gửi lại mã',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SetPasswordScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: Text(
                'XÁC NHẬN',
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

class OtpInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
          ),
        ),
      ),
    );
  }
}
