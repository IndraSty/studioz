import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import 'baru_saja_view.dart';
import 'history_page.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key,});


  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 2, vsync: this,);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking',
          style: GoogleFonts.poppins(
            color: Constant.fontColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TabBar(
                      controller: tabController,
                      unselectedLabelColor: const Color(0xff6D6D6D),
                      indicator: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: Constant.primaryColor,
                          ),
                        ),
                      ),
                      labelColor: Constant.primaryColor,
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      tabs: const [
                        Tab(
                          text: 'Baru Saja',
                        ),
                        Tab(
                          text: 'History',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: width,
              height: height * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              color: Constant.bodyColor,
              child: TabBarView(
                controller: tabController,
                children: [
                  BaruSajaView(),
                  HistoryPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
