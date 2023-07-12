import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class UlasanView extends StatelessWidget {
  const UlasanView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constant.bodyColor,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CardUlasan(width: width,),
          );
      },)
    );
  }
}

class CardUlasan extends StatelessWidget {
  const CardUlasan({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 14,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                  size: 14,
                ),
              ],
            ),
          ),
          Positioned(
            top: 15,
            left: 0,
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://awsimages.detik.net.id/community/media/visual/2021/09/24/lisa-blackpink-2_43.jpeg?w=1200'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            top: 5,
            left: 50,
            child: Container(
              width: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Studio',
                    style: GoogleFonts.poppins(
                      color: Constant.fontColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '06-05-2023',
                    style: GoogleFonts.poppins(
                      color: const Color(0xffA0A0A0),
                      fontSize: 8,
                    ),
                  ),
                  Text(
                    'Ulasan Produk adalah penilaian yang diberikan oleh pembeli Anda untuk produk yang Anda jual kepada mereka.',
                    style: GoogleFonts.poppins(
                      color: Constant.fontColor,
                      fontSize: 9,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            right: 0,
            bottom: 10,
            child: Icon(
              Icons.thumb_up_alt_outlined,
              size: 12,
              color: Color(0xff4D4D4D),
            ),
          ),
        ],
      ),
    );
  }
}
