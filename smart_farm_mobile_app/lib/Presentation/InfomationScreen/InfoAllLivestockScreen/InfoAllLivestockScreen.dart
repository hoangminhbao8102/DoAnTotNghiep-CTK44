// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../Data/Data.dart';
import '../../../Models/Livestock.dart';
import 'InfoLivestockScreen/InfoLivestockScreen.dart';

class InfoAllLivestockScreen extends StatefulWidget {
  const InfoAllLivestockScreen({super.key});

  @override
  _InfoAllLivestockScreenState createState() => _InfoAllLivestockScreenState();
}

class _InfoAllLivestockScreenState extends State<InfoAllLivestockScreen> {
  late List<Livestock> livestocks;

  @override
  void initState() {
    super.initState();
    livestocks = initializeLivestock();  // Khởi tạo farms khi màn hình được tạo
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
          'THÔNG TIN VẬT NUÔI',
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
                itemCount: livestocks.length, // Number of items
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(color: Colors.green),
                    ),
                    child: ListTile(
                      leading: Image.asset('assets/icons/livestock_icon.png', width: 50, height: 50),
                      title: Text(
                        livestocks[index].livestockName,  // Sử dụng tên trang trại từ đối tượng farm
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        livestocks[index].livestockType,  // Sử dụng địa chỉ trang trại từ đối tượng farm
                        style: const TextStyle(fontSize: 14),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => InfoLivestockScreen(livestock: livestocks[index]))));
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
    );
  }
}