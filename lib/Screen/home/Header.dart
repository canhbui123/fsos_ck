
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/img/OIP.jpeg"),
          //  backgroundColor: Colors.white,
          radius: 20.0,
        ),
        SizedBox(width: 7),
        Text("Bùi Cảnh",
            style: GoogleFonts.poppins(
              fontSize: 12,
            )),
      ],
    );
  }
}
