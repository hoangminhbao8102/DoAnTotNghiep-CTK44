// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../Models/Livestock.dart';

class InfoLivestockScreen extends StatefulWidget {
  final Livestock livestock;

  const InfoLivestockScreen({super.key, required this.livestock});

  @override
  _InfoLivestockScreenState createState() => _InfoLivestockScreenState();
}
class _InfoLivestockScreenState extends State<InfoLivestockScreen> {

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
              Center(
                child: Image.asset(widget.livestock.imageUrl, width: double.infinity, height: 200)
              ),
              const SizedBox(height: 20),
              buildDetailRow(
                'Tên vật nuôi: ',
                widget.livestock.livestockName
              ),
              buildDetailRow(
                'Loại vật nuôi: ',
                widget.livestock.livestockType
              ),
              buildDetailRow(
                'Ngày sinh: ',
                widget.livestock.dateOfBirth.toString(),
              ),
              buildDetailRow(
                'Mô tả',
                widget.livestock.description
              ),
              buildDetailRow(
                'Nuôi giống',
                widget.livestock.breed
              ),
              buildDetailRow(
                'Chăm sóc',
                widget.livestock.care
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}