// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

import '../../../../../Models/Farm.dart';

class UpdateFarmScreen extends StatefulWidget {
  const UpdateFarmScreen({super.key});

  @override
  _UpdateFarmScreenState createState() => _UpdateFarmScreenState();
}

class _UpdateFarmScreenState extends State<UpdateFarmScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _locationController = TextEditingController();

  final TextEditingController _areaController = TextEditingController();

  final TextEditingController _numberController = TextEditingController();

  final TextEditingController _livestockTypeController = TextEditingController();

  final TextEditingController _livestockNameController = TextEditingController();

  void _createFarm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Tạo một đối tượng Farm mới
      Farm newFarm = Farm(
        farmName: _nameController.text, 
        location: _locationController.text, 
        creationDate: DateTime.now(),
        area: double.parse(_areaController.text), 
        account: '',
        number: int.parse(_numberController.text),
        livestockType: _livestockTypeController.text,
        livestockName: _livestockNameController.text,
        livestockCount: 0
      );
      // Bạn có thể lưu trữ đối tượng Farm ở đây
      Navigator.pop(context);
    }
  }
  
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
          'TẠO TRANG TRẠI',
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
                controller: _nameController,
                icon: Icons.agriculture,
                hintText: 'Tên trang trại',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                controller: _locationController,
                icon: Icons.location_on,
                hintText: 'Vị trí',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                controller: _areaController,
                icon: Icons.square_foot,
                hintText: 'Diện tích',
                suffixText: 'M2',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                controller: _numberController,
                icon: Icons.numbers,
                hintText: 'Số lượng con',
                suffixText: 'CON',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                controller: _livestockTypeController,
                icon: Icons.pets,
                hintText: 'Loại vật nuôi',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                controller: _livestockNameController,
                icon: Icons.pets,
                hintText: 'Tên vật nuôi',
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _createFarm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'XÁC NHẬN',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context,
      {required IconData icon, required String hintText, String? suffixText, TextEditingController? controller}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
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
    );
  }
}