// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Models/Product.dart';
import '../../ProductScreen/InfoProductScreen/InfoProductScreen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.green),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                product.imageUrl,  // Truy cập trực tiếp thuộc tính của đối tượng Product
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Center(child: Text('Unable to load image')), // Fallback text if the image fails to load
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            product.productName,  // Truy cập trực tiếp thuộc tính của đối tượng Product
            style: const TextStyle(fontWeight: FontWeight.bold)
          ),
          Text(product.category),  // Truy cập trực tiếp thuộc tính của đối tượng Product
          const Text('\${product.price} VND'),  // Sử dụng giá trị giá cả từ đối tượng Product
          TextButton(
            onPressed: () {
              // Chuyển đến một màn hình chi tiết, đưa sản phẩm làm tham số
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => InfoProductScreen(product: product)
                )
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.green,
            ),
            child: const Text('XEM CHI TIẾT'),
          )
        ],
      ),
    );
  }
}