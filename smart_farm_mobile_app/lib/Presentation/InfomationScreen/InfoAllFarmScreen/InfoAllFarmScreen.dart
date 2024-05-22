// ignore_for_file: file_names, library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';

//import '../../../API/ApiService.dart';
import '../../../Data/Data.dart';
import '../../../Models/Farm.dart';
import 'CreateFarmScreen/CreateFarmScreen.dart';
import 'EditFarmScreen/EditFarmScreen.dart';
import 'InfoFarmScreen/InfoFarmScreen.dart';

class InfoAllFarmScreen extends StatefulWidget {
  const InfoAllFarmScreen({super.key});

  @override
  _InfoAllFarmScreenState createState() => _InfoAllFarmScreenState();
}

class _InfoAllFarmScreenState extends State<InfoAllFarmScreen> {
  List<Farm> farms = [];
  List<Farm> filteredFarms = [];
  final TextEditingController searchController = TextEditingController();
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
    farms = initializeFarms();  // Khởi tạo danh sách trang trại
    filteredFarms = List.from(farms);  // Initialize filteredFarms with all farms
    searchController.addListener(_filterFarms);
  }

  void _filterFarms() {
    String query = searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      setState(() {
        filteredFarms = farms.where((farm) {
          return farm.farmName.toLowerCase().contains(query) ||
                 farm.location.toLowerCase().contains(query);
        }).toList();
      });
    } else {
      setState(() {
        filteredFarms = List.from(farms);
      });
    }
  }

  void _addFarm() {
    if (_formKey.currentState!.validate()) {
      Farm newFarm = Farm(
        farmName: _nameController.text,
        location: _locationController.text,
        creationDate: DateTime.now(),
        area: double.tryParse(_areaController.text) ?? 0, // Giả sử thêm thông tin mặc định hoặc lấy từ form
        account: '', // Thông tin giả định
        number: int.tryParse(_numberController.text) ?? 0, // Thông tin giả định
        livestockType: _livestockTypeController.text, // Thông tin giả định
        livestockName: _livestockNameController.text, // Thông tin giả định
        livestockCount: 0, // Thông tin giả định
      );
      setState(() {
        farms.add(newFarm);
      });
      _nameController.clear();
      _locationController.clear();
      Navigator.of(context).pop(); // Đóng dialog sau khi thêm
    }
  }

  void _showAddFarmDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("TẠO TRANG TRẠI"),
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: "Tên trang trại"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập tên trang trại';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: "Vị trí"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Vui lòng nhập vị trí';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _areaController,
                  decoration: const InputDecoration(labelText: "Diện tích"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a location';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: "Location"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a location';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _locationController,
                  decoration: const InputDecoration(labelText: "Location"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a location';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Cancel"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              onPressed: _addFarm,
              child: const Text("Add"),
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
          'THÔNG TIN TRANG TRẠI',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.green),
                hintText: 'Tìm kiếm',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: farms.length, // Number of items
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(color: Colors.green),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/icons/farm_icon.png', width: 50, height: 50),
                      title: Text(
                        farms[index].farmName,  // Sử dụng tên trang trại từ đối tượng farm
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        farms[index].location,  // Sử dụng địa chỉ trang trại từ đối tượng farm
                        style: const TextStyle(fontSize: 14),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Chuyển farmId hoặc đối tượng farm đến màn hình tiếp theo
                          Navigator.push(context, MaterialPageRoute(builder: (context) => InfoFarmScreen(farm: farms[index])));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text('XEM THÔNG TIN'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateFarmScreen()));
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const EditFarmScreen()));
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}