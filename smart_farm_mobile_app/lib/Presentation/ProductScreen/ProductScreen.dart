// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../HomePage/Widgets/ProductCard.dart';

class ProductScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'TÊN SẢN PHẨM', 'type': 'Loại', 'price': 'Giá bán: Giá bán'},
  ];

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CÁC SẢN PHẨM'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}