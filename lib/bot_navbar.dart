import 'package:flutter/material.dart';
import 'package:studioz/pages/booking/booking_page.dart';
import 'package:studioz/pages/home/homePage.dart';
import 'package:studioz/pages/profile/profile_page.dart';
import 'package:studioz/pages/wishtlist/wishlist_page.dart';


import 'constant.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selectedIndex = 0;

    final List<Widget> _pages = const[
    HomePage(),
    WishlistPage(),
    BookingPage(),
    ProfilePage()
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          enableFeedback: false,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
           
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Constant.primaryColor,
          unselectedItemColor: Constant.botIcon,
          selectedIconTheme: const IconThemeData(
            color: Constant.primaryColor,
            size: 26,
          ),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_outline_rounded,
                ),
                label: 'Wishlist'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.music_note_outlined,
                ),
                label: 'Booing'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
