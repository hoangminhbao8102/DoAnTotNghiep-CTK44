// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../AccountScreen/AccountScreen.dart';
import '../CartScreen/CartScreen.dart';
import '../InfomationScreen/InfomationScreen.dart';
import '../NotificationScreen/NotificationScreen.dart';
import '../ProductScreen/ProductScreen.dart';
import '../SettingsPage/SettingsPage.dart';
import '../StatisticScreen/StatisticScreen.dart';
import 'Widgets/CategoryButton.dart';
import 'Widgets/ProductCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const InformationScreen(),
    ProductScreen(),
    const StatisticScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMART FARM APP'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
            },
          ),
        ],
      ),
      body: _selectedIndex == 0 ? _buildMainContent() : _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'TRANG CHỦ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'THÔNG TIN',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'SẢN PHẨM',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'THỐNG KÊ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'TÀI KHOẢN',
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryButton(icon: AssetImage('assets/icons/cow_icon.png'), label: 'GIA SÚC'),
              CategoryButton(icon: AssetImage('assets/icons/chicken_icon.png'), label: 'GIA CẦM'),
              CategoryButton(icon: AssetImage('assets/icons/pet_icon.png'), label: 'THÚ CƯNG'),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return const ProductCard(product: {},);
            },
          ),
        ),
      ],
    );
  }
}
