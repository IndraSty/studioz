import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studioz/pages/studio/ulasan_view.dart';

import '../../constant.dart';
import 'detail_view.dart';
import 'fasilitas_view.dart';

class StudioView extends StatefulWidget {
  const StudioView({super.key});

  @override
  State<StudioView> createState() => _StudioViewState();
}

class _StudioViewState extends State<StudioView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool onCLic = true;

  void onClickIcon() {
    setState(() {
      onCLic = !onCLic;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height * 0.45,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://events.rumah123.com/news-content/img/2021/08/14164041/biaya-membuat-studio-musik.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff2D2C2C).withOpacity(0.3)),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xff2D2C2C).withOpacity(0.3)),
                    child: IconButton(
                      onPressed: () => onClickIcon(),
                      icon: Icon(
                        onCLic ? Icons.bookmark_border : Icons.bookmark,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  text: 'Detail',
                ),
                Tab(
                  text: 'Fasilitas',
                ),
                Tab(
                  text: 'Ulasan(120)',
                ),
              ],
            ),
          ),

          const SizedBox(
              height: 20,
            ),
            Container(
              width: width,
              height: height * 0.45,
              color: Constant.bodyColor,
              child: TabBarView(
                controller: tabController,
                children: const[
                  DetailView(),
                  FasilitasView(),
                  UlasanView()
                ],
              ),
            ),
        ],
      ),
    );
  }
}
