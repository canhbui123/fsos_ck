import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ck_fsos/Screen/utils.dart';

class bleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // iphone14pro8mGu (31:180)
            padding: EdgeInsets.fromLTRB(
                20 * fem, 36 * fem, 14.5 * fem, 93.5 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // loanhistoryUh7 (42:17)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8.5 * fem, 0),
                  width: 350 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame55Qqf (42:18)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 17 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Kết nối thiết bị',
                                  style: SafeGoogleFont(
                                    'Karla',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.17 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Image.asset(
                                  'img/iconsax-linear-setting4.png',
                                  width: 15 * fem,
                                  height: 13.5 * fem,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // frame36Pr1 (42:25)
                                  // margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 168*fem, 8*fem),
                                  height: 45 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group2XSR (42:26)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 45 * fem,
                                        height: 45 * fem,
                                        child: Image.asset(
                                          'img/group-2.png',
                                          width: 45 * fem,
                                          height: 45 * fem,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Thiết bị 1',
                                            style: SafeGoogleFont(
                                              'Karla',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.17 * ffem / fem,
                                              color: Color(0xff383d50),
                                            ),
                                          ),
                                          Text(
                                            // ktniH4D (42:50)
                                            'Đã kết nối',
                                            style: SafeGoogleFont(
                                              'Karla',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.17 * ffem / fem,
                                              color: Color(0xff383d50),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Center(
                                      // connectcMP (46:275)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 7.68 * fem, 7 * fem),
                                        child: Text(
                                          '54%',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Cambay',
                                            fontSize: 11 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height:
                                                1.8181818182 * ffem / fem,
                                            color: Color(0xff00081e),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // timer2AD (46:276)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 8 * fem),
                                      width: 20 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'img/timer-HQ5.png',
                                        width: 20 * fem,
                                        height: 20 * fem,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              height: 1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 45 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group2XSR (42:26)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 45 * fem,
                                        height: 45 * fem,
                                        child: Image.asset(
                                          'img/group-2.png',
                                          width: 45 * fem,
                                          height: 45 * fem,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Thiết bị 2',
                                            style: SafeGoogleFont(
                                              'Karla',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.17 * ffem / fem,
                                              color: Color(0xff383d50),
                                            ),
                                          ),
                                          Text(
                                            // ktniH4D (42:50)
                                            'Đang hoạt động',
                                            style: SafeGoogleFont(
                                              'Karla',
                                              fontSize: 12 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.17 * ffem / fem,
                                              color: Color(0xff383d50),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Center(
                                      // connectcMP (46:275)
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 7.68 * fem, 7 * fem),
                                        child: Text(
                                          '38%',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Cambay',
                                            fontSize: 11 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height:
                                                1.8181818182 * ffem / fem,
                                            color: Color(0xff00081e),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // timer2AD (46:276)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 8 * fem),
                                      //width: 20*fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'img/timer-HQ5.png',
                                        width: 20 * fem,
                                        height: 20 * fem,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Divider(
                              height: 1,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: size.height/2,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextButton(
                            onPressed: () {
                              // Xử lý sự kiện khi nút được nhấn
                              // Đặt mã xử lý tại đây
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // mapQ6D (47:321)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 2 * fem),
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Image.asset(
                                        'img/map.png',
                                        width: 24 * fem,
                                        height: 24 * fem,
                                      ),
                                    ),
                                    Center(
                                      // hinthbnJxH (47:326)
                                      child: Text(
                                        'HIỂN THỊ BẢN ĐỒ',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Cambay',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.6666666667 * ffem / fem,
                                          color: Color(0xff006616),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ), // Thay đổi biểu tượng nút
                          ),
                        ),
                      ),
                    ],
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
