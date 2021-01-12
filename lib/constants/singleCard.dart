import 'package:flutter/material.dart';

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

Widget card(int percentage, int index) {
  return Container(
    child: Column(
      children: [
        Container(
            height: 200,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ))
      ],
    ),
  );
}
