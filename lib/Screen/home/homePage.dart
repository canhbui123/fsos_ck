import 'package:flutter/material.dart';

import '../buttonBar.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
    int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('FSOS TEST'),
      ),
      body:  Text('Text ne', ),
      
      bottomNavigationBar:  CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTabTapped: _onTabTapped,
        ),
      );
    
  }
}