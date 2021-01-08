import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/constants/text_style.dart';

final List<String> images = [
  'assets/skills/firebase.jpg',
  'assets/skills/flutter.jpg',
  'assets/skills/django.png',
  'assets/skills/java.jpeg',
  'assets/skills/photoshop.png',
  'assets/skills/filmora.png',
];

final List<String> places = [
  'FIREBASE',
  'FLUTTER',
  'DJANGO',
  'JAVA',
  'PHOTOSHOP',
  'FILMORA',
];

class SkillCar extends StatefulWidget {
  @override
  _SkillCarState createState() => _SkillCarState();
}

int _current = 0;

class _SkillCarState extends State<SkillCar> {
  List<Widget> card = [];
  List<Widget> generateImageTiles(screenSize) {
    for (var i = 0; i < places.length; i++) {
      Widget temp;
      temp = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                images[i],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [myText(places[i], Colors.black, 16)],
          ),
        ],
      );

      card.add(temp);
    }

    return card;
  }

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // width: screenSize.width*0.8,
            // alignment: Alignment.center,
            child: CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  // enlargeCenterPage: true,
                  height: 120,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              carouselController: _controller,
            ),
          ),
        ],
      ),
    );
  }
}
