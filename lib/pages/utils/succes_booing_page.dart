import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studioz/bot_navbar.dart';

import '../../constant.dart';
import '../booking/detail_pesanan_onReview.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Image.asset('assets/icons/success_img.png'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Pembayaran',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Constant.fontColor,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Berhasil',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Constant.fontColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Pembayaran anda telah berhasil tunggu pihak studio menyetujui pemesanan anda klik detail untu melanjutan',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xff515151),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: height * 0.08,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailPesananOnReview(
                        onReview: true,
                      )));
            },
            child: Container(
              height: 40,
              width: width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.primaryColor),
              child: Center(
                child: Text(
                  'Detail Order',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BottomNavbar(
                        selectedIndex: 0,
                      )));
            },
            child: Text(
              'Kembali ke Halaman Utama',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Constant.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
