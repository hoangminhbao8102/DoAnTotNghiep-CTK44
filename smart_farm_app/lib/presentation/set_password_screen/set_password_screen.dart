import 'package:flutter/material.dart'; // ignore_for_file: must_be_immutable

class SetPasswordScreen extends StatelessWidget {
  SetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController newPasswordController = TextEditingController();

  TextEditingController confirmNewPasswordController = TextEditingController();


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
              'Đặt lại mật khẩu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.green.withOpacity(0.1),
                hintText: 'Mật khẩu mới',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.green.withOpacity(0.1),
                hintText: 'Nhập lại mật khẩu mới',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Xử lý khi nhấn nút đặt lại mật khẩu
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: Text(
                'ĐẶT LẠI MẬT KHẨU',
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
