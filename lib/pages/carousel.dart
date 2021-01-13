import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

final List<String> images = [
  'https://www.datocms-assets.com/17507/1606822997-empowerment.jpg',
  'https://st2.depositphotos.com/3971023/6400/v/950/depositphotos_64004381-stock-illustration-cheerful-people-holding-hands-seamless.jpg',
  'https://images.pexels.com/photos/3109168/pexels-photo-3109168.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
];
final List<String> url = [
  'https://github.com/gurleen-kaur1313/RAISE-BACKEND',
  'https://github.com/gurleen-kaur1313/Oneness-Backend',
  'https://github.com/gurleen-kaur1313/OldBooksell-purchase_website',
];

final List<String> places = [
  'RAISE',
  'ONENESS',
  'OLD BOOKS SELLING WEBSITE',
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          places[_current],
                          style: GoogleFonts.poppins(
                            letterSpacing: 8,
                            fontSize: screenSize.width / 25,
                            color: Colors.yellow[700],
                          ),
                        ),
                        Container(
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FlatButton(
                              padding: EdgeInsets.all(10),
                              color: Colors.yellow,
                              onPressed: () async {
                                await launch(url[_current]);
                              },
                              child: myText("More", Colors.black, 18),
                            ),
                          ),
                        ),
                      ],
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
