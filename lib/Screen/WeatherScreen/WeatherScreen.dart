import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ck_fsos/Screen/utils.dart';
class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // iphone14pro12En5 (56:99)
            padding: EdgeInsets.fromLTRB(13 * fem, 15 * fem, 0 * fem, 36 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // thititzgh (56:120)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 207 * fem, 0 * fem),
                      child: Text(
                        'Thời tiết ',
                        style: SafeGoogleFont(
                          'Roboto',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.25 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xff1b1e28),
                        ),
                      ),
                    ),
                    Container(
                      // autogrouprqbfVNZ (4HRGqA9sjyRpLzvMJvrqbf)
                      width: 37 * fem,
                      height: 24 * fem,
                      child: Image.asset(
                        'img/auto-group-rqbf.png',
                        width: 27 * fem,
                        height: 24 * fem,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  //  width: 94*fem,
                  // height: 28*fem,
                  child: Text(
                    'Đồng Nai',
                    style: SafeGoogleFont(
                      'Roboto',
                      fontSize: 22 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2727272727 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23°',
                        style: GoogleFonts.roboto(
                          fontSize: 57 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1228070175 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                      Image.asset(
                        'img/cloud-and-sun.png',
                        width: 44.25 * fem,
                        height: 59 * fem,
                      ),
                      
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(24 * fem, 0, 122 * fem, 23 * fem),
                  width: double.infinity,
                  height: 42 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 36 * fem, 0),
                         width: 116 * fem,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffff6321),
                          borderRadius: BorderRadius.circular(14 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Hôm nay',
                            style: GoogleFonts.roboto(
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Color(0xff2e004e),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Ngày mai',
                        style: GoogleFonts.roboto(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4 * fem),
                  width: double.infinity,
                  height: 216 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 2 * fem,
                              sigmaY: 2 * fem,
                            ),
                            child: Align(
                              child: SizedBox(
                                width: 380 * fem,
                                height: 213 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(18 * fem),
                                    color: Color(0x4cd0bcff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 83 * fem,
                        top: 63 * fem,
                        child: Container(
                          width: 229 * fem,
                          height: 59 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 11 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffedf6ff),
                                  borderRadius:
                                      BorderRadius.circular(100 * fem),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 94.35 * fem,
                                    height: 24 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100 * fem),
                                        color: Color(0xff1c48e4),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xffedf6ff),
                                  borderRadius:
                                      BorderRadius.circular(100 * fem),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 121 * fem,
                                    height: 24 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100 * fem),
                                        color: Color(0xff1d49e5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 83 * fem,
                        top: 133 * fem,
                        child: Container(
                          width: 229 * fem,
                          height: 59 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 11 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfffaedff),
                                  borderRadius:
                                      BorderRadius.circular(100 * fem),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 139 * fem,
                                    height: 24 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100 * fem),
                                        color: Color(0xff1d49e5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xfffaedff),
                                  borderRadius:
                                      BorderRadius.circular(100 * fem),
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SizedBox(
                                    width: 193 * fem,
                                    height: 24 * fem,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100 * fem),
                                        color: Color(0xff1d49e5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11 * fem,
                        top: 39 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 28 * fem,
                            height: 28 * fem,
                            child: Image.asset(
                              'img/group-69.png',
                              width: 28 * fem,
                              height: 28 * fem,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 47 * fem,
                        top: 15 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 66 * fem,
                            height: 24 * fem,
                            child: Text(
                              'Tỷ lệ mưa',
                              style: GoogleFonts.roboto(
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.7142857143 * ffem / fem,
                                letterSpacing: 0.150000006 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16 * fem,
                        top: 94 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 36 * fem,
                            // height: 19 * fem,
                            child: Text(
                              '7 PM',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2530119578 * ffem / fem,
                                letterSpacing: 0.15 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16 * fem,
                        top: 127 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 36 * fem,
                            // height: 19 * fem,
                            child: Text(
                              '8 PM',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2530119578 * ffem / fem,
                                letterSpacing: 0.15 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16 * fem,
                        top: 164 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 36 * fem,
                            // height: 19 * fem,
                            child: Text(
                              '9 PM',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2530119578 * ffem / fem,
                                letterSpacing: 0.15 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8 * fem,
                        top: 197 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 44 * fem,
                            // height: 19 * fem,
                            child: Text(
                              '10 PM',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2530119578 * ffem / fem,
                                letterSpacing: 0.15 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 334 * fem,
                        top: 59.5 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 28 * fem,
                            // height: 28 * fem,
                            child: Text(
                              '27%',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8666666667 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 334 * fem,
                        top: 95.5 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 28 * fem,
                            // height: 28 * fem,
                            child: Text(
                              '44%',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8666666667 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 334 * fem,
                        top: 131.5 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 28 * fem,
                            // height: 28 * fem,
                            child: Text(
                              '56%',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8666666667 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 334 * fem,
                        top: 165.5 * fem,
                        child: Align(
                          child: SizedBox(
                            // width: 28 * fem,
                            // height: 28 * fem,
                            child: Text(
                              '88%',
                              style: GoogleFonts.roboto(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.8666666667 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 39 * fem, 209 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 319 * fem,
                  ),
                  child: Text(
                    'Khuyến cáo: Thời tiết hôm nay khá là xấu mọi người không nên đi leo núi vì sẽ khá nguy hiểm',
                    style: GoogleFonts.roboto(
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
