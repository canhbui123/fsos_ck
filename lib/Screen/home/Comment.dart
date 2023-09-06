
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImgComment extends StatelessWidget {
  const ImgComment({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: size.height /
      3, // Set the desired height for the list
                  width: size.width -
      20, // Set an explicit width for the list
                  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.all(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'img/img.png',
            width: size.width / 2.2,
            height: size.height / 3.5,
          ),
        ),
      );
    },
                  ),
                );
  }
}

class Comment extends StatelessWidget {
  const Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("img/OIP.jpeg"),
          radius: 30.0,
        ),
        SizedBox(width: 7),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Bùi Cảnh",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                )),
            SizedBox(
              height: 5,
            ),
            Text("Uầy nên đi trekking thử nha! khá là thú vị",
                style: GoogleFonts.poppins(
                  color: Color(0xff739088),
                  fontSize: 10,
                )),
          ],
        ),
      ],
    );
  }
}
