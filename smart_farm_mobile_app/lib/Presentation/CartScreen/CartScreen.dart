// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:smart_farm_mobile_app/Presentation/ProductScreen/InfoProductScreen/InfoProductScreen.dart';
import '../../../Models/Product.dart';  // Ensure this import path is correct

class CartScreen extends StatefulWidget {
  final List<Product> products;

  const CartScreen({super.key, required this.products});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    products = widget.products;
  }

  void _deleteProduct(int index) {
    setState(() {
      products.removeAt(index);
    });
  }

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
          final product = products[index];
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
                child: Image.asset(products[index].imageUrl),
              ),
              title: Text(products[index].productName),
              subtitle: Text('Giá bán: ${products[index].price.toString()} đồng'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.visibility, color: Colors.green),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InfoProductScreen(product: product)));
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteProduct(index),
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
