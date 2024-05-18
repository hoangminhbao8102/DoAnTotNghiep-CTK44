// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {'name': 'Sản phẩm 1', 'price': '10.000'},
    {'name': 'Sản phẩm 2', 'price': '20.000'},
    {'name': 'Sản phẩm 3', 'price': '30.000'},
    {'name': 'Sản phẩm 4', 'price': '40.000'},
    {'name': 'Sản phẩm 5', 'price': '50.000'},
  ];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DANH SÁCH MUA HÀNG'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.green),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                color: Colors.grey[300],
                child: const Center(child: Text('Image')),
              ),
              title: Text(products[index]['name']!),
              subtitle: Text('Giá bán: ${products[index]['price']} đồng'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.green),
                    onPressed: () {
                      // Edit action
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      // Delete action
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}