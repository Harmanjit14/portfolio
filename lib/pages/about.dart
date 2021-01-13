import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_style.dart';
import 'package:portfolio/pages/education.dart';

class AboutSection extends StatefulWidget {
  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  Color headColor = Color(0xffE8BD0D);

  Widget aboutMe() {
    return Container(
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
            padding: EdgeInsets.all(25),
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
                    child: headText("About Me", headColor, 50)),
                myText(
                    "Hi There! , My name is Harmanjit Singh. I am Full Stack-Developer and a UI/UX Designer. I am currently pursueing BTech in COE at Thapar Institute of Engineering and Technology, Patiala. I currently live in Punjab, India, happy to work from anywhere. My hobbies are swimming, gaming, traveling, badmintion, coding. I am always up to learn something new and create something better for the society",
                    Colors.white,
                    22,
                    weight: FontWeight.w400),
                myText(
                    "I am currently working and ready to collaborate on projects based on Flutter and Django. I usually design UI's on Figma and Adobe Photoshop CC19. I am currently learning AWS.",
                    Colors.white,
                    22,
                    weight: FontWeight.w600),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool hoverabout = true;
  bool hoveredu = false;

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
              "assets/black.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                  height: screenSize.height,
                  width: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            hoverabout = true;
                            hoveredu = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: (hoverabout)
                                        ? headColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        offset: Offset(1.5, 1),
                                        color: Color(0xff242B2E),
                                      ),
                                    ]),
                              ),
                              SizedBox(width: 15),
                              headText("About",
                                  (hoverabout) ? headColor : Colors.white, 25),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            hoveredu = true;
                            hoverabout = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: (hoveredu)
                                        ? headColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        offset: Offset(1.5, 1),
                                        color: Color(0xff242B2E),
                                      )
                                    ]),
                              ),
                              SizedBox(width: 15),
                              headText("Education",
                                  (hoveredu) ? headColor : Colors.white, 25),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: (hoverabout) ? aboutMe() : EducationPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AboutSectionMobile extends StatefulWidget {
  @override
  _AboutSectionMobileState createState() => _AboutSectionMobileState();
}

class _AboutSectionMobileState extends State<AboutSectionMobile> {
  Color headColor = Color(0xffE8BD0D);

  Widget aboutMe() {
    return Container(
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
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: headText("About Me", headColor, 30)),
                  myText(
                      "Hi There! , My name is Harmanjit Singh. I am Full Stack-Developer and a UI/UX Designer. I am currently pursueing BTech in COE at Thapar Institute of Engineering and Technology, Patiala. I currently live in Punjab, India, happy to work from anywhere. My hobbies are swimming, gaming, traveling, badmintion, coding. I am always up to learn something new and create something better for the society",
                      Colors.white,
                      16,
                      weight: FontWeight.w400),
                  myText(
                      "I am currently working and ready to collaborate on projects based on Flutter and Django. I usually design UI's on Figma and Adobe Photoshop CC19. I am currently learning AWS.",
                      Colors.white,
                      16,
                      weight: FontWeight.w600),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool hoverabout = true;
  bool hoveredu = false;
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
              "assets/black.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            hoverabout = true;
                            hoveredu = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: (hoverabout)
                                        ? headColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        offset: Offset(1.5, 1),
                                        color: Color(0xff242B2E),
                                      ),
                                    ]),
                              ),
                              SizedBox(width: 15),
                              headText("About",
                                  (hoverabout) ? headColor : Colors.white, 25),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            hoveredu = true;
                            hoverabout = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: (hoveredu)
                                        ? headColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(40),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 2,
                                        offset: Offset(1.5, 1),
                                        color: Color(0xff242B2E),
                                      )
                                    ]),
                              ),
                              SizedBox(width: 15),
                              headText("Education",
                                  (hoveredu) ? headColor : Colors.white, 25),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: (hoverabout) ? aboutMe() : EducationPage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
