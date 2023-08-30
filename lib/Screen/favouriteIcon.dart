
import 'package:flutter/material.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50, // Kích thước của biểu tượng hình tròn
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF293E86), // Màu nền #293E86
      ),
      child: IconButton(
        onPressed: () {
          // Xử lý sự kiện khi nút trái tim được nhấn
        },
        icon: Icon(
          Icons.favorite,
          color: Colors.white, // Màu trắng cho biểu tượng trái tim
        ),
      ),
    );
  }
}
