// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InfoFarmScreen extends StatelessWidget {
  const InfoFarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'THÔNG TIN TRANG TRẠI',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/icons/farm_icon.png', width: 120, height: 120),
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'TÊN TRANG TRẠI',
                hintText: 'Tên trang trại',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'NGÀY TẠO',
                hintText: 'Ngày tạo',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'CHỦ SỞ HỮU',
                hintText: 'Chủ sở hữu',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'VỊ TRÍ',
                hintText: 'Vị trí',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'DIỆN TÍCH',
                hintText: 'Diện tích',
                suffixText: 'M2',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'LOẠI VẬT NUÔI',
                hintText: 'Loại vật nuôi',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'TÊN VẬT NUÔI',
                hintText: 'Tên vật nuôi',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'SỐ LƯỢNG CON',
                hintText: 'Con',
                suffixText: 'CON',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context,
      {required String label, required String hintText, String? suffixText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: hintText,
            suffixText: suffixText,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}