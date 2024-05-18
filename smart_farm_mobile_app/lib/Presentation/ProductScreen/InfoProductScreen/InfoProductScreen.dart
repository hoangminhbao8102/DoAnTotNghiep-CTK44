// ignore_for_file: file_names

import 'package:flutter/material.dart';

class InfoProductScreen extends StatelessWidget {
  const InfoProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THÔNG TIN SẢN PHẨM'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              color: Colors.grey[300],
              height: 200,
              width: double.infinity,
              child: const Center(child: Text('imageURL')),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'TÊN SẢN PHẨM',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'LOẠI SẢN PHẨM',
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'MÔ TẢ',
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'SỐ LƯỢNG',
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text('CÁI'),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'GIÁ BÁN',
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Text('ĐỒNG'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('THÊM VÀO GIỎ HÀNG'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, 
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
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