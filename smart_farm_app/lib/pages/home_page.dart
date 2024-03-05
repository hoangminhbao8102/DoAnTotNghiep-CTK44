import 'package:flutter/material.dart';
import 'package:smart_farm_app/widgets/top_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 932,
      decoration: const BoxDecoration(
        color: Color(0xfff3f4f7),
      ),
      child: Stack(),
    );
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        title: const Text(
          "Welcome",
          style: TextStyle(
            color: Color(0xFF3A3737),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: const Color(0xFF3A3737),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 0,
                      color: Colors.greenAccent,
                      style: BorderStyle.none,
                    ),
                  ),
                 // filled: true,
                 prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.greenAccent,
                 ),
                 suffixIcon: const Icon(
                  Icons.sort,
                  color: Colors.greenAccent,
                 ),
                 hintText: "Tim Kiem"
                ),
              ),
            ),
            //Top Menus
            const TopMenus(),
          ],
        ),
      ),
    );
  }
}
