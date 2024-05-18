// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../LoginScreen/LoginScreen.dart';
import 'ChangePasswordScreen/ChangePasswordScreen.dart';
import 'UpdateAccountScreen/UpdateAccountScreen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CÀI ĐẶT'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Minh Bảo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'minhb@gmail.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '0969123456',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateAccountScreen()));
              },
              icon: const Icon(Icons.edit),
              label: const Text('CẬP NHẬT THÔNG TIN CÁ NHÂN'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, 
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.green, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePasswordScreen()));
              },
              icon: const Icon(Icons.lock),
              label: const Text('ĐỔI MẬT KHẨU'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, 
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.green, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('XÁC NHẬN ĐĂNG XUẤT'),
                      content: const Text('Bạn có chắc chắn muốn đăng xuất không?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LogInScreen()));
                          },
                          child: const Text('Có'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.pop(context);
                          },
                          child: const Text('Không'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.logout),
              label: const Text('ĐĂNG XUẤT'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red, 
                backgroundColor: Colors.white,
                side: const BorderSide(color: Colors.red, width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}