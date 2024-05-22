// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Models/Product.dart';

class InfoProductScreen extends StatelessWidget {
  final Product product;

  const InfoProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THÔNG TIN SẢN PHẨM'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView( // Using SingleChildScrollView to handle overflow
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  product.imageUrl, // Truy cập thuộc tính imageUrl trực tiếp
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(child: Text('Unable to load image')),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Tên sản phẩm: ${product.productName}', // Truy cập thuộc tính name trực tiếp
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Loại sản phẩm: ${product.category}', // Truy cập thuộc tính type trực tiếp
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Mô tả: ${product.description}', // Truy cập thuộc tính description trực tiếp
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Số lượng: ${product.amount.toString()} cái', // Truy cập thuộc tính quantity trực tiếp
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Giá bán: ${product.price.toString()} đồng', // Truy cập thuộc tính price trực tiếp
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {}, // Logic to handle Add to Cart
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('THÊM VÀO GIỎ HÀNG'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: Colors.green,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {}, // Logic to handle Buy Now
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('MUA NGAY'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}