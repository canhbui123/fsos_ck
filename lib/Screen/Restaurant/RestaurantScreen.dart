


import 'package:ck_fsos/Screen/Hotel/DetailHotelScreen.dart';
import 'package:ck_fsos/Screen/buttonApp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Item(
          textDetail2:" Tạm thời tránh xa cuộc sống xô bồ thường nhật" ,
          textDetail: "Nhà Hàng Champa Garden trực thuộc khu nghỉ dưỡng Champa Island Nha Trang Resort & Spa. Toạ lạc cạnh dòng sông Cái êm đềm, thực khách có thể tận hưởng không gian ăn uống thuần Việt trong trẻo giữa giữa hàng dừa tươi xanh",
          text: 'Nhà Hàng Champa Garden',
          image: AssetImage('img/nhahang1.jpeg'),
        ),
       Item(
            textDetail2: "Đó chính là sự kết hợp giữa ẩm thực Nhật Bản, pizza, món ngon truyền thống và hiện đại Châu Âu.",
          textDetail:"Đây là nhà hàng Nha Trang hiếm hoi có dây chuyền nấu bia thủ công khép kín, mang đến 7 loại hương vị đặc trưng khó miêu tả thành lời. Đã có bia ngon thì không thể thiếu vắng sự góp mặt của những món nhắm đậm vị" ,
          text: 'Louisiane Brewhouse',
          image: AssetImage('img/nhahang2.jpeg'),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final String text; final String textDetail;final String textDetail2;

  final ImageProvider<Object> image;
  const Item({
    required this.image,
    required this.text,
    super.key, required this.textDetail, required this.textDetail2,
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
                    MaterialPageRoute(builder: (context) => DetailHotelScreen(image: image,text: text,textDetail2: textDetail2,textDetail: textDetail,),)
                  );
                })
          ],
        ),
      ],
    );
  }
}

