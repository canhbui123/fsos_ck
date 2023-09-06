
import 'package:ck_fsos/Screen/Trekking/DetailTrekkingScreen.dart';
import 'package:ck_fsos/Screen/buttonApp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrekkingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Item(
          textDetail2: "Bạn cần phải biết rõ những thách thức sẽ đối diện và cách giải quyết chúng.",
          textDetail: "Tà Năng Phan Dũng chính là sự lựa chọn hoàn hảo dành cho bạn. Đây là một hành trình mà bất kỳ tín đồ trekking nào cũng nên thử ít nhất một lần trong đời. Nhưng bạn có biết rằng, để trải nghiệm được đầy đủ sự thú vị của Tà Năng – Phan Dũng,",
          text: 'Ta Nang - Phan Dung',
          image: AssetImage('img/TaNang.jpg'),
        ),
        Item(
          textDetail2: "Ngay trong vùng lõi của Vườn Quốc gia Phong Nha – Kẻ Bàng thuộc Tỉnh Quảng Bình. ",
          textDetail: "Hang Én một trong những hang động tự nhiên lớn nhất thế giới. nằm sâu trong vùng lõi Vườn Quốc gia Phong Nha – Kẻ Bàng, Tỉnh Quảng Bình. Sở hữu đường đứt gãy địa chất lớn, Hang Én có kích thước hùng vỹ với hơn 1.6km trải dài xuyên qua khối đá vôi khổng lồ ",
          text: 'Hang En - Quang Binh',
          image: AssetImage('img/Tre2.png'),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final String text;final String textDetail;final String textDetail2;
  final ImageProvider<Object> image;
  const Item({
    required this.image,
    required this.text,
    super.key, required this.textDetail, required this.textDetail2,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
                    MaterialPageRoute(builder: (context) =>  DetailTrekkingScreen(image: image, text: text, textDetail: textDetail, textDetail2: textDetail2,),),
                  );
                })
          ],
        ),
      ],
    );
  }
}
