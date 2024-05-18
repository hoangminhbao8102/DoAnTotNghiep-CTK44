// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'NotificationCard/NotificationCard.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notificationsToday = [
    {
      'status': 'success',
      'message': 'Bạn đã thêm trang trại thành công',
    },
  ];

  final List<Map<String, String>> notificationsThreeDaysAgo = [
    {
      'status': 'success',
      'message': 'Bạn đã mua hàng thành công',
      'detail': 'Sản phẩm: '
    },
    {
      'status': 'success',
      'message': 'Bạn đã thêm trang trại thành công',
    },
  ];

  final List<Map<String, String>> notificationsEarlier = [
    {
      'date': 'Thứ năm, 14/03/2024',
      'status': 'success',
      'message': 'Bạn đã mua hàng thành công',
      'detail': 'Sản phẩm: '
    },
  ];

  NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('THÔNG BÁO'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hôm nay',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...notificationsToday.map((notification) => NotificationCard(notification)),
              const SizedBox(height: 16),
              const Text(
                'Ba ngày trước',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...notificationsThreeDaysAgo.map((notification) => NotificationCard(notification)),
              const SizedBox(height: 16),
              ...notificationsEarlier.map((notification) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification['date']!,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  NotificationCard(notification),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}