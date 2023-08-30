
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
          text: 'Ta Nang - Phan Dung',
          image: AssetImage('assets/img/TaNang.jpg'),
        ),
        Item(
          text: 'Hang En - Quang Binh',
          image: AssetImage('assets/img/Tre2.png'),
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final String text;
  final ImageProvider<Object> image;
  const Item({
    required this.image,
    required this.text,
    super.key,
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
                    MaterialPageRoute(builder: (context) =>  DetailTrekkingScreen(image: image,),),
                  );
                })
          ],
        ),
      ],
    );
  }
}
