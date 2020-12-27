import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      child: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 18 / 8,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            carouselController: _controller,
          ),
          AspectRatio(
            aspectRatio: 18 / 8,
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
    );
  }
}
