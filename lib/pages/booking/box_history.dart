import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class BoxHistoriStudio extends StatelessWidget {
  const BoxHistoriStudio({
    super.key,
    required this.width, required this.widget, required this.imgUrl,
  });

  final double width;
  final Widget widget;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Text(
              'Regular',
              style: GoogleFonts.poppins(
                color: const Color(0xff787777),
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: Text(
                '2 Juni 2023',
                style: GoogleFonts.poppins(
                  color: const Color(0xffBCBBBB),
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                ),
              )),
          Positioned(
            top: 18,
            child: Container(
              width: 295,
              child: Row(
                children: [
                  Container(
                    height: 84,
                    width: 71,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            imgUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
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
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: Color(0xff787777),
                            size: 9,
                          ),
                          Text(
                            'Kota Yogyakarta, Daerah Istimewa Yogyakarta',
                            style: GoogleFonts.poppins(
                              color: const Color(0xff787777),
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Constant.fontColor,
                            size: 13,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '3 Juni 2023',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Constant.fontColor,
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Constant.fontColor,
                            size: 13,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '14:00 - 16:00',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Constant.fontColor,
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp 70.000',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Constant.fontColor,
                              fontSize: 8,
                            ),
                          ),
                          Text(
                            '(2 jam) - Gopay',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff787777),
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: widget
          )
        ],
      ),
    );
  }
}
