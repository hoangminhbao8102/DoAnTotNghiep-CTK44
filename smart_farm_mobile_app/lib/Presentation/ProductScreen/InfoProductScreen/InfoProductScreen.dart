// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../Models/Product.dart';
import '../../CartScreen/CartScreen.dart';
import '../../NotificationScreen/NotificationScreen.dart';  // Ensure the correct path is provided

class InfoProductScreen extends StatelessWidget {
  final Product product;

  const InfoProductScreen({super.key, required this.product});

  void addToCartAndOpen(BuildContext context) {
    // Here, we simply navigate to the CartScreen and pass the product information.
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartScreen(products: [product]),
      ),
      
    );
  }

  void showPurchaseSuccessNotification(BuildContext context) {
  // Giả sử bạn đã có một Navigator stack setup
    Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => NotificationScreen(),
      ),
    );
  }

  void goToCartScreen(BuildContext context) {
  // Ví dụ chuyển đến tab giỏ hàng
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => CartScreen(products: [product]) // giả sử tab 1 là giỏ hàng
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THÔNG TIN SẢN PHẨM'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
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
                child: Image.asset(product.imageUrl, width: double.infinity, height: 200),
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
                  onPressed: () {
                    // Hiển thị AlertDialog để xác nhận
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Xác nhận'),
                          content: const Text('Bạn có muốn thêm sản phẩm này vào giỏ hàng không?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Đóng dialog
                              },
                              child: const Text('Hủy'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Đóng dialog trước khi hiển thị thông báo và chuyển hướng
                                // Gọi hàm để thêm sản phẩm vào giỏ hàng tại đây nếu cần
                                // Hiển thị thông báo thành công và chuyển đến CartScreen
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Thêm vào giỏ hàng thành công!'))
                                );
                                // Giả sử bạn có một Navigator tab hoặc controller để chuyển đến CartScreen
                                // Thay đổi index hoặc route tùy theo cấu trúc ứng dụng của bạn
                                goToCartScreen(context);
                              },
                              child: const Text('Xác nhận'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('THÊM VÀO GIỎ HÀNG'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: Colors.green,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Hiển thị AlertDialog để xác nhận
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Xác Nhận Mua'),
                          content: const Text('Bạn có chắc chắn muốn mua sản phẩm này không?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Đóng dialog
                              },
                              child: const Text('Hủy'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Mua thành công!'))
                                ); // Đóng dialog trước khi hiển thị thông báo
                                // Thêm logic để chuyển đến NotificationScreen và hiển thị thông báo
                                // Giả sử bạn đang sử dụng một function tên là showPurchaseSuccessNotification
                                showPurchaseSuccessNotification(context);
                              },
                              child: const Text('Xác Nhận'),
                            ),
                          ],
                        );
                      },
                    );
                  },
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