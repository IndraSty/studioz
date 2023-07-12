import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            color: Constant.fontColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Constant.bodyColor,
        elevation: 0,
      ),
      backgroundColor: Constant.bodyColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 128,
              width: 128,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://assets.kompasiana.com/items/album/2023/05/27/img-20230527-234322-6472337808a8b556282bc452.jpg?t=o&v=400'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              'Indoradesu',
              style: GoogleFonts.poppins(
                color: Constant.fontColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Indoradesu@gmail.com',
              style: GoogleFonts.poppins(
                color: Constant.fontColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ContainerItem(
              width: width,
              icon: Icons.person_2_outlined,
              text: 'Akun Saya',
            ),
            const SizedBox(
              height: 5,
            ),
            ContainerItem(
              width: width,
              icon: Icons.location_on_outlined,
              text: 'Lokasi Saya',
            ),
            const SizedBox(
              height: 5,
            ),
            ContainerItem(
              width: width,
              icon: Icons.notifications_outlined,
              text: 'Notifikasi',
            ),
            const SizedBox(
              height: 5,
            ),
            ContainerItem(
              width: width,
              icon: Icons.bookmark_outline_rounded,
              text: 'Whistlist',
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerItem(
              width: width,
              icon: Icons.help_outline,
              text: 'Support',
            ),
            const SizedBox(
              height: 5,
            ),
            ContainerItem(
              width: width,
              icon: Icons.list_alt_sharp,
              text: 'Syarat & Ketentuan',
            ),
            const SizedBox(
              height: 5,
            ),
            ContainerItem(
              width: width,
              icon: Icons.help_outline,
              text: 'Bantuan',
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 43,
              width: width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.redAccent)
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.logout_rounded,
                    size: 16,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: width * 0.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout',
                          style: GoogleFonts.poppins(
                              color: Colors.redAccent,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                          color: Color(0xffA9A7A7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerItem extends StatelessWidget {
  const ContainerItem({
    super.key,
    required this.width,
    required this.text,
    required this.icon,
  });

  final double width;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Constant.primaryColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      color: Constant.fontColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 14,
                  color: Color(0xffA9A7A7),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
