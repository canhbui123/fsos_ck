import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

    children: [
       Text('Games Screen',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500))
    ],
    );
  }
}
