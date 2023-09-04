import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({super.key});

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Text('Thông tin sức khỏe',style: GoogleFonts.cambay(fontSize: 16,color: Colors.black),),
        actions: [Icon(Icons.accessibility,color: Colors.black,)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text(
              'Nhịm tim',
              style: GoogleFonts.roboto(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Text('96 bpm',
                        style: GoogleFonts.roboto(
                            fontSize: 30, fontWeight: FontWeight.bold))),
                Image.asset(
                  "img/nhiptim1.png",
                  width: sizeWidth / 2,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RoundedImageContainer(
                  imageAsset: "img/giotmau.png",
                  title: "Nhóm máu",
                  text: 'A+',
                ),
                RoundedImageContainer(
                  imageAsset: "img/kg.png",
                  title: "Cân nặng",
                  text: '60 kg',
                ),
              ],
            ), SizedBox(height: 20,),
            Text('Lưu ý về sức khỏe khi đi du lịch',style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
            ListTile(
              leading: Image.asset('img/file1.png'),
              title: Text('Những điều cần lưu ý'),
              trailing: Icon(Icons.calendar_view_day_outlined),
              subtitle:  Text('8 file'),
            ),
            Divider(),
              ListTile(
              leading: Image.asset('img/file2.png'),
              title: Text('Lưu ý về thiết bị'),
              trailing: Icon(Icons.calendar_view_day_outlined), 
              subtitle: Text('8 file'),
            )
          ],
        ),
      ),
    );
  }
}

class RoundedImageContainer extends StatelessWidget {
  final String imageAsset;
  final String text;
  final String title;

  const RoundedImageContainer({
    required this.imageAsset,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Độ lệch của bóng đổ
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageAsset,
                width: 30.0,
                height: 30.0,
              ),
              SizedBox(height: 10.0),
              Text(
                title,
                style: GoogleFonts.cambay(
                  fontSize: 14.0,
                ),
              ),
              Text(
                text,
                style: GoogleFonts.cambay(
                    fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
