

import 'package:ck_fsos/Screen/Hotel/DetailHotelScreen.dart';
import 'package:ck_fsos/Screen/buttonApp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HotelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Item(
          textDetail2:"Có sân hiên, quầy bar trong khuôn viên và sảnh khách chung." ,
          textDetail: "Tọa lạc tại thành phố Đà Nẵng, cách Bãi biển Mỹ Khê 1,6 km, Sala Danang Beach Hotel cung cấp chỗ nghỉ với xe đạp cùng chỗ đỗ xe riêng miễn phí, hồ bơi ngoài trời và trung tâm thể dục. Trong số các tiện nghi của chỗ nghỉ này có nhà hàng, câu lạc bộ trẻ em, dịch vụ đưa đón miễn phí và WiFi miễn phí trong toàn bộ khuôn viên. ",
          text: 'Sala Danang Beach Hotel',
          image: AssetImage('img/Hotel.png'),
        ),
       Item(
        textDetail2: "Hoặc thư giãn tận hưởng ánh nắng trên giường phơi nắng.",
        textDetail: "Chỗ nghỉ này cách bãi biển 1 phút đi bộ. Khách sạn cung cấp các phòng và dãy phòng được bài trí trang nhã với tầm nhìn tuyệt vời ra biển và thành phố. Khách sạn còn tự hào có hồ bơi vô cực trên sân thượng, nơi du khách có thể bơi lội ",
          text: 'HAIAN Beach Hotel & Spa',
          image: AssetImage('img/hotel2.jpg'),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final String text;  final String textDetail; final String textDetail2;
  final ImageProvider<Object> image;
  
  const Item({
    required this.textDetail,
      required this.textDetail2,
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text('Danh sách',
            style:
                GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w300)),
            ButtonApp(
                text: 'xem',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailHotelScreen(image: image, text: text,textDetail2: textDetail2,textDetail: textDetail,),)
                  );
                })
          ],
        ),
      ],
    );
  }
}

