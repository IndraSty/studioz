import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import 'box_history.dart';

class BaruSajaView extends StatelessWidget {
  BaruSajaView({super.key});

  List<String> imgUrl = [
    'https://events.rumah123.com/news-content/img/2021/08/14164041/biaya-membuat-studio-musik.jpg',
    'https://tangerangnews.com/assets/uploaded/photo/2021/10/12/c55b2b8691807b5ba6e5b8a25d738ce9.jpg',
    'https://image.archify.com/blog/l/9wr7y6k3.jpg',
    'https://ardianwibisono.files.wordpress.com/2010/01/studio.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: BoxHistoriStudio(
              width: width,
              widget: Text(
                'Pesanan Sedang Ditinju',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: Constant.primaryColor,
                  fontSize: 10,
                ),
              ),
              imgUrl: imgUrl[index],
            ),
          );
        },
      ),
    );
  }
}
