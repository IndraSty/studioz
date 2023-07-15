import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class BoxStudioItem extends StatelessWidget {
  const BoxStudioItem({
    super.key,
    required this.width,
    required this.height,
    required this.img,
    required this.widget,
  });

  final double width;
  final double height;
  final String img;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 213,
      width: 154,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.4),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 40,
                height: 17,
                padding: const EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.45)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.star,
                      size: 12,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4.5',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nama Studio',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                        size: 10,
                      ),
                      Text(
                        '2.5 km',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp. 35k',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '/ per jam',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 150,
              right: -12,
              child: widget,
            ),
          ],
        ),
      ),
    );
  }
}

class BarItemStudio extends StatelessWidget {
  const BarItemStudio({
    super.key,
    required this.width,
    required this.imgUrl,
  });

  final double width;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 81,
      padding: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Row(
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 255,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Studio',
                      style: GoogleFonts.poppins(
                        color: Constant.fontColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Constant.fontColor,
                          size: 10,
                        ),
                        Text(
                          '2.5 m',
                          style: GoogleFonts.poppins(
                            color: Constant.fontColor,
                            fontSize: 8,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Rp. 35k',
                          style: GoogleFonts.poppins(
                              color: Constant.fontColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '/ per jam',
                          style: GoogleFonts.poppins(
                              color: Constant.fontColor,
                              fontSize: 7,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text(
                          '4.5',
                          style: GoogleFonts.poppins(
                            color: Constant.fontColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '1.200 review',
                      style: GoogleFonts.poppins(
                        color: Constant.fontColor,
                        fontSize: 8,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Icon(
                      Icons.bookmark,
                      color: Constant.primaryColor,
                      size: 22,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
