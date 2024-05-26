// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import '../SettingsPage/UpdateAccountScreen/UpdateAccountScreen.dart';  // Make sure this path is correct

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String _name = 'Hoàng Nghĩa Minh Bảo';
  String _address = '16A/1 Phù Đổng';
  String _phone = '0793893778';
  String _email = 'minhbao8102@gmail.com';

  void _navigateAndUpdateProfile() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UpdateAccountScreen(),
      ),
    );

    if (result != null && result is Map<String, String>) {
      setState(() {
        _name = result['name'] ?? _name;
        _address = result['address'] ?? _address;
        _phone = result['phone'] ?? _phone;
        _email = result['email'] ?? _email;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('THÔNG TIN CÁ NHÂN', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _navigateAndUpdateProfile,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white, size: 50),
              ),
              const SizedBox(height: 10),
              Text(
                _name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              buildInfoTextField(icon: Icons.person, labelText: 'Họ và tên', info: _name),
              const SizedBox(height: 20),
              buildInfoTextField(icon: Icons.location_on, labelText: 'Địa chỉ', info: _address),
              const SizedBox(height: 20),
              buildInfoTextField(icon: Icons.phone, labelText: 'Số điện thoại', info: _phone),
              const SizedBox(height: 20),
              buildInfoTextField(icon: Icons.email, labelText: 'Email', info: _email),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoTextField({required IconData icon, required String labelText, required String info}) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      controller: TextEditingController(text: info)..selection = TextSelection.fromPosition(TextPosition(offset: info.length)),
      readOnly: true,  // Make text field read-only if you do not want them to be editable directly
    );
  }
}
