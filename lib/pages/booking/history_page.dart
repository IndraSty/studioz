import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import 'box_history.dart';
import 'detail_pesanan_onReview.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({super.key});

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
        itemCount: imgUrl.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPesananOnReview(
                          onReview: false,
                        )));
              },
              child: BoxHistoriStudio(
                width: width,
                widget: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Constant.primaryColor),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      textStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Booking Lagi'),
                  ),
                ),
                imgUrl: imgUrl[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
