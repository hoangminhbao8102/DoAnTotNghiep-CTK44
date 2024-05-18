// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget{
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: const Text(
          'THÔNG TIN CÁ NHÂN',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Minh Bảo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            buildTextField(
              context,
              icon: Icons.person,
              hintText: 'Họ và tên người dùng',
            ),
            const SizedBox(height: 20),
            buildTextField(
              context,
              icon: Icons.location_on,
              hintText: 'Địa chỉ',
            ),
            const SizedBox(height: 20),
            buildTextField(
              context,
              icon: Icons.phone,
              hintText: 'Số điện thoại',
            ),
            const SizedBox(height: 20),
            buildTextField(
              context,
              icon: Icons.email,
              hintText: 'Email',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context, {required IconData icon, required String hintText}) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}