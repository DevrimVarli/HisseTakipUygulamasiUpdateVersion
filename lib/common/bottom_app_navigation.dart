import 'package:borsa_app/features/account/presentation/login_screen.dart';
import 'package:borsa_app/features/favorites/presentation/favorites_screen.dart';
import 'package:borsa_app/features/home_page/presentation/home_page_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BottomAppNavigation extends StatefulWidget {
  const BottomAppNavigation({super.key});

  @override
  State<BottomAppNavigation> createState() => _BottomAppNavigationState();
}

class _BottomAppNavigationState extends State<BottomAppNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    HomePageScreen(),
    FavoritesScreen(),
    LoginScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'.tr()),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favorites'.tr(),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'.tr()),
        ],
        backgroundColor: Color(0xFF0B1D51),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
      ),
    );
  }
}
