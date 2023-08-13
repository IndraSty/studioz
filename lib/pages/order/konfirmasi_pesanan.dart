import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import '../utils/succes_booing_page.dart';

class KonfirmPesanan extends StatefulWidget {
  const KonfirmPesanan({super.key});

  @override
  State<KonfirmPesanan> createState() => _KonfirmPesananState();
}

class _KonfirmPesananState extends State<KonfirmPesanan> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Konfirmasi Pemesanan',
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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Studio',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Constant.fontColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 18,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '3 Juni 2023',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.watch_later_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '14:00 - 15-00',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.diamond_outlined,
                    size: 18,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Regular',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notifikasi Email',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const ToggleSwitch()
                ],
              ),
              SizedBox(
                width: width * 0.6,
                child: Text(
                  'Dapatkan informasi terbaru mengenai studio ini melalui email anda',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: const Color(0xff737373),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Spesial Request',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Constant.fontColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: width,
                height: height * 0.18,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Constant.primaryColor, width: 1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Apa pesan request anda?',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xff949494),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Nomor Whatsapp',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Constant.fontColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: width,
                height: 45,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: Constant.primaryColor,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset('assets/icons/id.png'),
                    Text(
                      '  +62',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Constant.fontColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const VerticalDivider(
                      width: 5, // Tentukan lebar garis vertikal
                      thickness: 1, // Tentukan ketebalan garis vertikal
                      color: Constant
                          .primaryColor, // Tentukan warna garis vertikal
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '812 345 678 90',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Constant.fontColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notifikasi Whatsapp',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const ToggleSwitch()
                ],
              ),
              SizedBox(
                width: width * 0.7,
                child: Text(
                  'Dapatkan informasi mengenai pembayaran studio ini melalui whatsapp anda',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: const Color(0xff737373),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Metode Pembayaran',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Pilih Metode Pembayaran',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Constant.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 18,
                        color: Color(0xffA9A7A7),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.7,
                child: Text(
                  'Silahkan pilih metode pembayaran untuk melakukan pemesanan',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: const Color(0xff737373),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Rincian Pembayaran',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Constant.fontColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xff737373),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Rp 120.000',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xff737373),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya Pelayanan',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xff737373),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Rp 5.000',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: const Color(0xff737373),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Pembayaran',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Constant.fontColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Rp 125.000',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Constant.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 84,
        width: width,
        decoration: const BoxDecoration(
          color: Constant.bodyColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Total',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Constant.fontColor,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Rp. 125.000',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Constant.fontColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PaymentSuccessPage()));
                },
                child: Container(
                  height: 40,
                  width: 216,
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Booking Sekarang',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool _toggleValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Constant.primaryColor,
      thumbColor: MaterialStateProperty.all(Colors.white),
      inactiveTrackColor: const Color(0xffEDEDED),
      value: _toggleValue,
      onChanged: (bool newValue) {
        setState(() {
          _toggleValue = newValue;
        });
      },
    );
  }
}
