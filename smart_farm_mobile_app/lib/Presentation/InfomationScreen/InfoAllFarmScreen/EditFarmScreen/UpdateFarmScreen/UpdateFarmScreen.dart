// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

class UpdateFarmScreen extends StatefulWidget {
  const UpdateFarmScreen({super.key});

  @override
  _UpdateFarmScreenState createState() => _UpdateFarmScreenState();
}

class _UpdateFarmScreenState extends State<UpdateFarmScreen> {
  String? selectedAnimalType;
  String? selectedAnimal;

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
                child: Image.network(
                  'https://example.com/your-image.png', // Replace with your image URL
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                icon: Icons.agriculture,
                hintText: 'Tên trang trại',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                icon: Icons.location_on,
                hintText: 'Vị trí',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                icon: Icons.square_foot,
                hintText: 'Diện tích',
                suffixText: 'M2',
              ),
              const SizedBox(height: 20),
              buildTextField(
                context,
                icon: Icons.numbers,
                hintText: 'Con',
                suffixText: 'CON',
              ),
              const SizedBox(height: 20),
              buildDropdown(
                context,
                icon: Icons.pets,
                hintText: 'Chọn loại vật nuôi',
                value: selectedAnimalType,
                items: ['Gia súc', 'Gia cầm', 'Thú cưng'],
                onChanged: (value) {
                  setState(() {
                    selectedAnimalType = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              buildDropdown(
                context,
                icon: Icons.pets,
                hintText: 'Chọn vật nuôi',
                value: selectedAnimal,
                items: ['Bò', 'Dê', 'Cừu'],
                onChanged: (value) {
                  setState(() {
                    selectedAnimal = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle confirm action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'CẬP NHẬT',
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
      {required IconData icon, required String hintText, String? suffixText}) {
    return TextField(
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

  Widget buildDropdown(BuildContext context,
      {required IconData icon,
      required String hintText,
      required String? value,
      required List<String> items,
      required ValueChanged<String?> onChanged}) {
    return InputDecorator(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(hintText),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}