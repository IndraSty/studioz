import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studioz/model/dataStudio.dart';

import '../../constant.dart';
import '../studio/studio_view.dart';
import 'catalog_view_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final studio = daftarStudio;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Container(
                          height: 51,
                          width: 51,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://assets.kompasiana.com/items/album/2023/05/27/img-20230527-234322-6472337808a8b556282bc452.jpg?t=o&v=400',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hallo',
                            style: GoogleFonts.poppins(
                              color: Constant.fontColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Indoradesu',
                            style: GoogleFonts.poppins(
                              color: Constant.fontColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: IconButton(
                      icon: const Icon(
                        Icons.notifications,
                        size: 20,
                        color: Color(0xff9B9B9B),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Buka Kerativitasmu:',
                    style: GoogleFonts.poppins(
                      color: Constant.fontColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Sewa Studio, Buat Musikmu',
                    style: GoogleFonts.poppins(
                      color: Constant.fontColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.755,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      cursorColor: Constant.fontColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Cari Studio',
                        hintStyle: TextStyle(
                          color: Color(0xff8C8A8A),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Color(0xff9B9B9B),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.13,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Constant.primaryColor,
                    ),
                    child: Center(
                        child: Image.asset(
                      'assets/icons/Filter.png',
                      width: 20,
                      height: 20,
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rekomendasi',
                    style: GoogleFonts.poppins(
                      color: Constant.fontColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: GoogleFonts.poppins(
                      color: Constant.primaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 213,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgUrl.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudioView(),
                          ),
                        );
                      },
                      child: BoxStudioItem(
                        width: width,
                        height: height,
                        img: imgUrl[index],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Baru Dilihat',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: GoogleFonts.poppins(
                          color: Constant.primaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: imgUrl.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const StudioView(),
                                ),
                              );
                            },
                            child: BarItemStudio(
                              width: width,
                              imgUrl: imgUrl[index],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Constant.bodyColor,
    );
  }

  List<String> imgUrl = [
    'https://events.rumah123.com/news-content/img/2021/08/14164041/biaya-membuat-studio-musik.jpg',
    'https://tangerangnews.com/assets/uploaded/photo/2021/10/12/c55b2b8691807b5ba6e5b8a25d738ce9.jpg',
    'https://image.archify.com/blog/l/9wr7y6k3.jpg',
    'https://ardianwibisono.files.wordpress.com/2010/01/studio.jpg',
  ];
}
