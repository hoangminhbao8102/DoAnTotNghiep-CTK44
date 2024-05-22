// ignore_for_file: file_names, library_private_types_in_public_api, unused_local_variable, avoid_print

import 'package:flutter/material.dart';

import '../../../../Models/Farm.dart';

class CreateFarmScreen extends StatefulWidget {
  const CreateFarmScreen({super.key});

  @override
  _CreateFarmScreenState createState() => _CreateFarmScreenState();
}

class _CreateFarmScreenState extends State<CreateFarmScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _locationController = TextEditingController();

  final TextEditingController _areaController = TextEditingController();

  final TextEditingController _numberController = TextEditingController();

  final TextEditingController _livestockTypeController = TextEditingController();

  final TextEditingController _livestockNameController = TextEditingController();

  void _createFarm() {
  if (_formKey.currentState?.validate() ?? false) {  // Sử dụng null-aware operator để đảm bảo không gặp null
    _formKey.currentState!.save();  // Lúc này mới an toàn để gọi save()
    Farm newFarm = Farm(
      farmName: _nameController.text,
      location: _locationController.text,
      creationDate: DateTime.now(),
      area: double.tryParse(_areaController.text) ?? 0,  // Sử dụng tryParse để tránh lỗi khi parsing
      account: '',
      number: int.tryParse(_numberController.text) ?? 0,  // Tương tự như trên
      livestockType: _livestockTypeController.text,
      livestockName: _livestockNameController.text,
      livestockCount: 0,
    );
    _confirmCreation(newFarm);
  } else {
    print('Biểu mẫu không hợp lệ');
  }
}

  void _confirmCreation(Farm farm) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("XÁC NHẬN TẠO TRANG TRẠI"),
          content: const Text("Bạn có chắc chắn tạo trang trại hay không?"),
          actions: <Widget>[
            TextButton(
              child: const Text("Hủy"),
              onPressed: () {
                Navigator.of(context).pop();  // Close the dialog
              },
            ),
            TextButton(
              child: const Text("Xác nhận"),
              onPressed: () {
                // Here, add the farm to your farm list and maybe save to database or state management
                print("Trang trại đã tạo: ${farm.farmName}");
                Navigator.of(context).pop();  // Close the dialog
                Navigator.of(context).pop();  // Optionally close the current screen
              },
            ),
          ],
        );
      },
    );
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