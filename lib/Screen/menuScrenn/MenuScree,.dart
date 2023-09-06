
import 'package:flutter/material.dart';

class CustomButtonWithText extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final ImageProvider<Object> image; // Sử dụng ImageProvider để truyền ảnh

  CustomButtonWithText(
      {this.isSelected = false, required this.onPressed, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? Color(0xFFFFDE6A) : Color(0xFFD7DEE9),
         
        ),
        child: Column(
          children: [
            Image(
              image: image, width: 46, // Đặt chiều rộng
              height: 36, // Đặt chiều cao), // Sử dụng ảnh từ widget
            ),
            //  SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
