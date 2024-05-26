// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Map<String, String> notification;

  const NotificationCard(this.notification, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Thêm hành động khi nhấn vào thẻ, ví dụ: hiển thị chi tiết
        print("Notification tapped!");
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 40),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification['message'] ?? 'No message provided',
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    if (notification.containsKey('detail') && notification['detail'] != null)
                      Text(
                        notification['detail']!,
                        style: const TextStyle(fontSize: 14),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}