import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants/skillCard.dart';
import 'package:portfolio/constants/text_style.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/white.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 16,
                          spreadRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 7,
                          sigmaY: 7,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child:
                                      headText("About Me", Colors.black, 50)),
                              myText(
                                  "Hi There! , My name is Harmanjit Singh. I am Full Stack-Developer cum UI/UX Designer. I am currently pursueing BTech in COE at Thapar Institute of Engineering and Technology, Patiala. I currently live in Punjab, India, happy to work from anywhere. My hobbies are swimming, gaming, traveling, badmintion, coding. I am always up to learn something new and create something better for the society",
                                  Colors.black,
                                  22,
                                  weight: FontWeight.w400),
                              myText(
                                  "I am currently working and ready to collaborate on projects based on Flutter and Django. I usually design UI's on Figma and Adobe Photoshop CC19. I am currently learning AWS.",
                                  Colors.black,
                                  22,
                                  weight: FontWeight.w600),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 16,
                          spreadRadius: 10,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 7,
                          sigmaY: 7,
                        ),
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: headText(
                                      "My Skill Set", Colors.black, 50)),
                              SkillCar(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
