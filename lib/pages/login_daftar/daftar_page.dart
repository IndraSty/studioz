import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bot_navbar.dart';
import '../../constant.dart';
import 'login_page.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  bool secureText = true;

  void passwordToggle() {
    setState(() {
      secureText = !secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.13,
            ),
            Text(
              'StudioZ',
              style: GoogleFonts.satisfy(
                fontSize: 40,
                color: Constant.primaryColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Silahan Daftarkan Akun Anda',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: const Color(0xff7A7A7A),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Nama',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Constant.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            BoxTextfield(
              width: width,
              hint: 'nama anda',
              icon: Icons.person_2_outlined,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Constant.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            BoxTextfield(
              width: width,
              hint: 'example@gmail.com',
              icon: Icons.email_outlined,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Constant.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Constant.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff7A7A7A),
                    fontWeight: FontWeight.w600,
                  ),
                  obscureText: secureText,
                  cursorColor: const Color(0xff7A7A7A),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 24,
                      color: Color(0xff7A7A7A),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        secureText
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        size: 24,
                        color: const Color(0xff7A7A7A),
                      ),
                      onPressed: () => passwordToggle(),
                    ),
                    hintText: 'min. 8 karakter',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xff7A7A7A),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Konfirmasi Password',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Constant.fontColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: width,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Constant.primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextField(
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color(0xff7A7A7A),
                    fontWeight: FontWeight.w600,
                  ),
                  obscureText: secureText,
                  cursorColor: const Color(0xff7A7A7A),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 24,
                      color: Color(0xff7A7A7A),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        secureText
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined,
                        size: 24,
                        color: const Color(0xff7A7A7A),
                      ),
                      onPressed: () => passwordToggle(),
                    ),
                    hintText: 'min. 8 karakter',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xff7A7A7A),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.18),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomNavbar(
                            selectedIndex: 0,
                          )));
                },
                child: Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Constant.primaryColor),
                  child: Center(
                    child: Text(
                      'Daftar',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya Akun?',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Constant.fontColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BoxTextfield extends StatelessWidget {
  const BoxTextfield({
    super.key,
    required this.width,
    required this.hint,
    required this.icon,
  });

  final double width;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Constant.primaryColor,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: TextField(
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: const Color(0xff7A7A7A),
            fontWeight: FontWeight.w600,
          ),
          keyboardType: TextInputType.emailAddress,
          cursorColor: const Color(0xff7A7A7A),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              icon,
              size: 24,
              color: const Color(0xff7A7A7A),
            ),
            hintText: hint,
            hintStyle: GoogleFonts.poppins(
              fontSize: 12,
              color: const Color(0xff7A7A7A),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
