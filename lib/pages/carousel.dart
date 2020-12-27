import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/text_style.dart';

final List<String> images = [
  'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png',
  'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png',
  'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png',
  'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png',
  'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png',
  'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png',
];

final List<String> places = [
  'ASIA',
  'AFRICA',
  'EUROPE',
  'SOUTH AMERICA',
  'AUSTRALIA',
  'ANTARCTICA',
];

class Carosel extends StatefulWidget {
  @override
  _CaroselState createState() => _CaroselState();
}

class _CaroselState extends State<Carosel> {
  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(50, 50, 0, 0),
              alignment: Alignment.topLeft,
              child: headText("My Projects", Colors.white, 50)),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: Stack(
              
              children: [
                Container(
                  alignment: Alignment.center,
                  child: CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: screenSize.height * 0.7,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                    carouselController: _controller,
                  ),
                ),
                Container(
                  height: screenSize.height * 0.7,
                  child: Center(
                    child: Text(
                      places[_current],
                      style: GoogleFonts.electrolize(
                        letterSpacing: 8,
                        fontSize: screenSize.width / 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
