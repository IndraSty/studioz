import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class DetailPesananOnReview extends StatelessWidget {
  DetailPesananOnReview({super.key, required this.onReview});
  bool onReview = true;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Pesanan',
          style: GoogleFonts.poppins(
            color: Constant.fontColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 18,
              color: Constant.fontColor,
            )),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Constant.bodyColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '6 Juni 2023',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      onReview
                          ? Text(
                              'Pesanan Sedang Ditinjau',
                              style: GoogleFonts.poppins(
                                color: Constant.primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          : Text(
                              'Pemesanan Berhasil',
                              style: GoogleFonts.poppins(
                                color: Constant.primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                    ],
                  ),
                  Row(
                    children: [
                      onReview
                          ? SizedBox(
                              width: 166,
                              child: Text(
                                'Pesanan anda sedang ditinjau oleh pemilik studio',
                                style: GoogleFonts.poppins(
                                  color: Constant.fontColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            )
                          : SizedBox(
                              width: 194,
                              child: Text(
                                'Pemesanan anda berhasil dan telah disetujui oleh pemilik studio',
                                style: GoogleFonts.poppins(
                                  color: Constant.fontColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              height: 130,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.diamond_outlined,
                            color: Color(0xff787777),
                            size: 18,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Regular',
                            style: GoogleFonts.poppins(
                              color: Constant.fontColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      Text(
                        '6 Juni 2023',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 71,
                        height: 84,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn-cms.pgimgs.com/static/2020/11/1.-studio-musik.jpg'),
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
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                size: 8,
                                color: Color(0xff787777),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Kota Yogyakarta, Daerah Istimewa Yogyakarta',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff787777),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
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
                                Icons.calendar_month_outlined,
                                size: 12,
                                color: Constant.fontColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '3 Juni 2023',
                                style: GoogleFonts.poppins(
                                  color: Constant.fontColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.watch_later_outlined,
                                size: 12,
                                color: Constant.fontColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '14:00 - 16:00',
                                style: GoogleFonts.poppins(
                                  color: Constant.fontColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Rp. 125.000',
                            style: GoogleFonts.poppins(
                              color: Constant.fontColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 66,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Metode Pembayaran',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Dana',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 106,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Rincian Pembayaran',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff737373),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Rp. 120.000',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff737373),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Biaya Pelayanan',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff737373),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Rp. 5.000',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff737373),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Pembayaran',
                        style: GoogleFonts.poppins(
                          color: Constant.fontColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Rp. 125.000',
                        style: GoogleFonts.poppins(
                          color: Constant.primaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: onReview ? SizedBox(
        height: 120,
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 269,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Constant.primaryColor,
                ),
              ),
              child: Center(
                child: Text(
                  'Batalkan Pesanan',
                  style: GoogleFonts.poppins(
                    color: Constant.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ) : Container(
        height: 120,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Constant.primaryColor,
                ),
              ),
              child: Center(
                child: Text(
                  'Beri Rating',
                  style: GoogleFonts.poppins(
                    color: Constant.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constant.primaryColor,
              ),
              child: Center(
                child: Text(
                  'Booing Lagi',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
