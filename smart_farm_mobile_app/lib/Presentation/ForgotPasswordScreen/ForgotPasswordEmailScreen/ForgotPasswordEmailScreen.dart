// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Data/Data.dart';
import '../../../Models/Account.dart';
import '../../OTPScreen/OTPEmailScreen/OTPEmailScreen.dart'; // ignore_for_file: must_be_immutable

class ForgotPasswordEmailScreen extends StatelessWidget {
  ForgotPasswordEmailScreen({super.key});

  TextEditingController emailController = TextEditingController();
  final List<Account> accounts = initializeAccounts();

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
            const Spacer(),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(Icons.lock, size: 50, color: Colors.orange),
            ),
            const SizedBox(height: 30),
            const Text(
              'QUÊN MẬT KHẨU',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.green.withOpacity(0.1),
                hintText: 'Nhập email',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String inputEmailNumber = emailController.text.trim();
                bool isValid = accounts.any((account) => account.email == inputEmailNumber);

                if (isValid) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OTPEmailScreen()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Số điện thoại không chính xác, vui lòng thử lại.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
              ),
              child: const Text(
                'TIẾP TỤC',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}