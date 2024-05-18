// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InfoLivestockScreen extends StatelessWidget {
  const InfoLivestockScreen({super.key});

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
          'THÔNG TIN VẬT NUÔI',
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
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: const Center(
                  child: Text('imageURL', style: TextStyle(color: Colors.grey)),
                ),
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
                label: 'LOẠI VẬT NUÔI',
                hintText: 'Loại vật nuôi',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'NGÀY SINH',
                hintText: 'Ngày sinh',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'MÔ TẢ',
                hintText: 'Mô tả',
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'NUÔI GIỐNG',
                hintText: 'Nuôi giống',
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                label: 'CHĂM SÓC',
                hintText: 'Chăm sóc',
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context, {required String label, required String hintText, int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
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
        ),
      ],
    );
  }
}