// ignore_for_file: file_names, library_private_types_in_public_api, use_build_context_synchronously, unnecessary_cast

import 'package:flutter/material.dart';

//import '../../../../API/ApiService.dart';
import '../../../../Models/Farm.dart';

class InfoFarmScreen extends StatefulWidget {
  final Farm farm;

  const InfoFarmScreen({super.key, required this.farm});

  @override
  _InfoFarmScreenState createState() => _InfoFarmScreenState();
}

class _InfoFarmScreenState extends State<InfoFarmScreen> {
  
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
              buildDetailRow('Tên trang trại:', widget.farm.farmName),
              buildDetailRow('Ngày tạo:', widget.farm.creationDate.toString()), // Example, assuming you have this data
              buildDetailRow('Chủ sở hữu:', widget.farm.account as String),
              buildDetailRow('Vị trí:', widget.farm.location),
              buildDetailRow('Diện tích:', '${widget.farm.area} M2'),
              buildDetailRow('Loại vật nuôi:', widget.farm.livestockType),
              buildDetailRow('Tên vật nuôi:', widget.farm.livestockName),
              buildDetailRow('Số lượng con:', '${widget.farm.livestockCount} con'),
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