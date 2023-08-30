import 'package:ck_fsos/Screen/Game/GamesScreen.dart';
import 'package:ck_fsos/Screen/Restaurant/RestaurantScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../buttonBar.dart';
import '../Hotel/HotelScreen.dart';
import '../menuScrenn/MenuScree,.dart';
import '../Trekking/TrekkingScreen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _currentIndex = 1; // Initialize to 0 to match the first button.
  int _selectedButtonIndex = 0; // Trạng thái hiện tại của nút được chọn

  void _onButtonTapped(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chọn hoạt động',
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CustomButtonWithText(
                          image: AssetImage('assets/img/TrekkingIcon.png'),
                          isSelected: _selectedButtonIndex == 0,
                          onPressed: () {
                            _onButtonTapped(0);
                          },
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Trekking",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomButtonWithText(
                          image: AssetImage('assets/img/HotelIcon.png'),
                          isSelected: _selectedButtonIndex == 1,
                          onPressed: () {
                            _onButtonTapped(1);
                          },
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Khách sạn",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomButtonWithText(
                          image: AssetImage('assets/img/ResIcon.png'),
                          isSelected: _selectedButtonIndex == 2,
                          onPressed: () {
                            _onButtonTapped(2);
                          },
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Nhà hàng",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomButtonWithText(
                          image: AssetImage('assets/img/GamesIcon.png'),
                          isSelected: _selectedButtonIndex == 3,
                          onPressed: () {
                            _onButtonTapped(3);
                          },
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Games",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                if (_selectedButtonIndex == 0) TrekkingScreen(),
                if (_selectedButtonIndex == 1) HotelScreen(),
                if (_selectedButtonIndex == 2) RestaurantScreen(),
                if (_selectedButtonIndex == 3) GamesScreen(),
               
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabTapped: _onTabTapped,
      ),
    );
  }
}
