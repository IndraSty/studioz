import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import '../studio/studio_view.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wishlist',
          style: GoogleFonts.poppins(
            color: Constant.fontColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
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
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: width,
                height: height * 0.82,
                child: ListView.builder(
                  itemCount: imgUrl.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StudioView(),
                            ),
                          );
                        },
                        child: CardItemWishlist(
                          width: width,
                          imgUrl: imgUrl[index],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<String> imgUrl = [
    'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/02/06/2735126466.jpg',
    'https://cdn-cms.pgimgs.com/static/2020/11/1.-studio-musik.jpg',
    'https://www.pinhome.id/blog/wp-content/uploads/2022/02/music-theme-decor-ideas-4.jpg'
  ];
}

class CardItemWishlist extends StatelessWidget {
  const CardItemWishlist({
    super.key,
    required this.width,
    required this.imgUrl,
  });

  final double width;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            width: width,
            height: 168,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Stack(children: [
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.bookmark_rounded,
                    size: 26,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      height: 15,
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
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
