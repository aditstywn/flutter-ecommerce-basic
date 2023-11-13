import 'package:as_store/common/constant/colors.dart';
import 'package:as_store/pages/cart/cart_page.dart';
import 'package:as_store/pages/home/home_page.dart';
import 'package:as_store/pages/profile/person_page.dart';
import 'package:flutter/material.dart';

import 'chat/chat_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const CartPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorName.bottomNav,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorName.appBar,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ' ',
            backgroundColor: ColorName.bottomNav,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ' ',
          ),
        ],
      ),
    );
  }
}
