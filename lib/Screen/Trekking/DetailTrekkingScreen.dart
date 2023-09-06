import 'package:ck_fsos/Screen/buttonApp.dart';
import 'package:ck_fsos/Screen/favouriteIcon.dart';
import 'package:ck_fsos/Screen/menuScrenn/Detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../buttonBar.dart';

class DetailTrekkingScreen extends StatefulWidget {
  const DetailTrekkingScreen({
  required this.image,
    Key? key, required this.text, required this.textDetail, required this.textDetail2,
  }) : super(key: key);
   final ImageProvider<Object> image;
    final String text;final String textDetail;final String textDetail2;
  @override
  State<DetailTrekkingScreen> createState() => _DetailTrekkingScreenState();
}

class _DetailTrekkingScreenState extends State<DetailTrekkingScreen> {
  int _currentIndex = 0; // Initialize to 0 to match the first button.
  
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Detail(size: size,image:widget.image, text: widget.text, textDetail: widget.textDetail,textDetail2: widget.textDetail2),
              Center(
                child: ButtonApp(
                  text: '       Bắt Đầu       ',
                  press: () {},
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTabTapped: _onTabTapped,
      // ),
    );
  }
}
