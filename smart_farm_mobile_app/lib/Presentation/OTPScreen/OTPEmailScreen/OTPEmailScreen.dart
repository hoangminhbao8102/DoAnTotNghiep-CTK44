// ignore_for_file: file_names, library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';

import '../../SetPasswordScreen/SetPasswordScreen.dart';
import '../OTPInput.dart';

class OTPEmailScreen extends StatefulWidget {
  const OTPEmailScreen({super.key});

  @override
  _OTPEmailScreenState createState() => _OTPEmailScreenState();
}

class _OTPEmailScreenState extends State<OTPEmailScreen> {
  final controllers = List.generate(4, (_) => TextEditingController());
  String otp = ''; // OTP is now a mutable field within the state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(Icons.lock, size: 50, color: Colors.orange),
              ),
              const SizedBox(height: 30),
              const Text(
                'NHẬP OTP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Một mã code 4 số đã được gửi tới email của bạn',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) => OTPInput(controller: controllers[index])),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Không nhận được mã?',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Gửi lại mã',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => SetPasswordScreen(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                ),
                child: const Text(
                  'XÁC NHẬN',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void verifyOTP() {
    String otp = controllers.map((c) => c.text).join();

    print("Entered OTP: $otp");
  }
}