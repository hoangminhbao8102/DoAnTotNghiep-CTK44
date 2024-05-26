// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../Data/Data.dart';
import '../../../../Models/Farm.dart';

class EditFarmScreen extends StatefulWidget {
  const EditFarmScreen({super.key});

  @override
  _EditFarmScreenState createState() => _EditFarmScreenState();
}

class _EditFarmScreenState extends State<EditFarmScreen> {
  List<Farm> farms = [];
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _locationController = TextEditingController();
  final _areaController = TextEditingController();
  final _numberController = TextEditingController();
  final _livestockTypeController = TextEditingController();
  final _livestockNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    farms = initializeFarms();
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
          'THÔNG TIN TRANG TRẠI',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Danh sách trang trại hiện có',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: farms.length, // Adjusted to use the length of the farms list
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(color: Colors.green),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/icons/farm_icon.png', width: 50, height: 50),
                      title: Text(
                        farms[index].farmName,  // Displaying farm name
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        farms[index].location,  // Displaying farm location
                        style: const TextStyle(fontSize: 14),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.green),
                            onPressed: () => _updateFarm(index),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteFarm(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            )
          ],
        ),
      ),
    );
  }

  void _updateFarm(int index) {
  // Reset the text controllers with the current farm data
  _nameController.text = farms[index].farmName;
  _locationController.text = farms[index].location;
  _areaController.text = farms[index].area.toString(); // Assuming area is numeric
  _numberController.text = farms[index].number.toString(); // Assuming number is numeric
  _livestockTypeController.text = farms[index].livestockType;
  _livestockNameController.text = farms[index].livestockName;

  // Show dialog with form
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('CẬP NHẬT TRANG TRẠI'),
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Tên trang trại'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Vui lòng nhập tên trang trại';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: 'Vị trí'),
              ),
              TextFormField(
                controller: _areaController,
                decoration: const InputDecoration(labelText: 'Diện tích'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _numberController,
                decoration: const InputDecoration(labelText: 'Số lượng con'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: _livestockTypeController,
                decoration: const InputDecoration(labelText: 'Loại vật nuôi'),
              ),
              TextFormField(
                controller: _livestockNameController,
                decoration: const InputDecoration(labelText: 'Tên vật nuôi'),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Hủy'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Lưu'),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Save new values back to the farm list and pop the dialog
                setState(() {
                  farms[index].farmName = _nameController.text;
                  farms[index].location = _locationController.text;
                  farms[index].area = double.tryParse(_areaController.text) ?? 0.0;
                  farms[index].number = int.tryParse(_numberController.text) ?? 0;
                  farms[index].livestockType = _livestockTypeController.text;
                  farms[index].livestockName = _livestockNameController.text;
                });
                Navigator.of(context).pop();
              }
            },
          )
        ]
      );
    }
  );
}

  void _deleteFarm(int index) {
    setState(() {
      farms.removeAt(index);
    });
  }
}