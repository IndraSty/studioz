import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studioz/pages/login_daftar/daftar_page.dart';

import '../../bot_navbar.dart';
import '../../constant.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              'Silahan Masuk dengan Akun Anda',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: const Color(0xff7A7A7A),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: height * 0.1,
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
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color(0xff7A7A7A),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      size: 24,
                      color: Color(0xff7A7A7A),
                    ),
                    hintText: 'example@gmail.com',
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
              height: height * 0.04,
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
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Lupa Password?',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Constant.fontColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
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
                      'Masuk',
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
                  'Belum punya Akun?',
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
                        builder: (context) => const DaftarPage()));
                  },
                  child: Text(
                    'Daftar',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Constant.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 68,
                    width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(width: 1, color: Constant.primaryColor)),
                    child: Center(
                      child: Image.asset('assets/icons/google.png'),
                    ),
                  ),
                  Container(
                    height: 68,
                    width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(width: 1, color: Constant.primaryColor)),
                    child: Center(
                      child: Image.asset('assets/icons/fb.png'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
