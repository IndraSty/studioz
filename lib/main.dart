import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studioz/pages/booking/baru_saja_view.dart';
import 'package:studioz/pages/booking/booking_page.dart';
import 'package:studioz/pages/home/homePage.dart';
import 'package:studioz/pages/intro_screen.dart';
import 'package:studioz/pages/profile/profile_page.dart';
import 'package:studioz/pages/studio/studio_view.dart';
import 'package:studioz/pages/wishtlist/wishlist_page.dart';

import 'bot_navbar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Studioz',
      theme: ThemeData(),
      home: const BottomNavbar(),
    );
  }
}
