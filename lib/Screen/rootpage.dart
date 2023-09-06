import 'package:ck_fsos/Screen/Search/searchScren.dart';
import 'package:ck_fsos/Screen/WeatherScreen/WeatherScreen.dart';
import 'package:ck_fsos/Screen/bluetooth/bluetoothScreen.dart';
import 'package:ck_fsos/Screen/home/homePage.dart';
import 'package:ck_fsos/Screen/profile/profilePage.dart';
import 'package:flutter/material.dart';

import 'buttonBar.dart';
import 'hel/health_page.dart';
 

class RootPage extends StatefulWidget {
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
 homePage(),
 SearchScreen(),
 bleScreen(),
 WeatherScreen(),
 // HealthPage(),

   profilePage() // Thêm các trang con khác tương ứng
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabTapped: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
