import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTabTapped;

  CustomBottomNavigationBar(
      {required this.currentIndex, required this.onTabTapped});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10), // Khoảng cách padding
      decoration: BoxDecoration(
 
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Màu của đổ bóng
            blurRadius: 5.0, // Độ mờ của đổ bóng
            spreadRadius: 1.0, // Độ phân tán của đổ bóng
            offset: Offset(
                0, -1), // Vị trí của đổ bóng (trục y âm để đổ bóng xuống dưới)
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Bo tròn góc
        child: BottomNavigationBar(
          elevation: 0, // Loại bỏ đổ bóng mặc định của BottomNavigationBar
          currentIndex: widget.currentIndex,
          onTap: widget.onTabTapped,
          selectedItemColor: const Color.fromARGB(255, 2, 73, 132),
          unselectedItemColor: Colors.black,
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.devices),
              label: 'Devices',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              label: 'Box',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
