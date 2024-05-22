import 'package:flutter/material.dart';

import 'Presentation/LoginPage/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Smart Farm Mobile App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
