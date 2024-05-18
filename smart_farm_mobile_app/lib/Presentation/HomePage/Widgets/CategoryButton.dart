// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final dynamic icon; // Can be IconData or ImageProvider
  final String label;

  const CategoryButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon is IconData
            ? IconButton(
                icon: Icon(icon),
                color: Colors.green,
                iconSize: 48,
                onPressed: () {},
              )
            : IconButton(
                icon: ImageIcon(icon as ImageProvider),
                iconSize: 48,
                onPressed: () {},
              ),
        Text(label, style: const TextStyle(color: Colors.green)),
      ],
    );
  }
}