import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:portfolio/constants/text_style.dart';

class EducationPage extends StatelessWidget {
  final Color headColor = Color(0xffE8BD0D);
  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: headText("My Education", headColor, 50)),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: myText("2008-2017", Colors.grey[350], 20),
                            ),
                            Container(
                              child: myText("Matriculation", Colors.white, 30),
                            ),
                            Container(
                              child: myText("M.G.N Public School UE-2,",
                                  Colors.grey[350], 25),
                            ),
                            Container(
                              child: myText(
                                  "Jalandhar, Punjab", Colors.grey[350], 20),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(
                      color: Colors.grey[700],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: myText("2017-2019", Colors.grey[350], 20),
                            ),
                            Container(
                              child: myText(
                                  "Graduated High School", Colors.white, 30),
                            ),
                            Container(
                              child: myText("M.G.N Public School UE-2,",
                                  Colors.grey[350], 25),
                            ),
                            Container(
                              child: myText(
                                  "Jalandhar, Punjab", Colors.grey[350], 20),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(
                      color: Colors.grey[700],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: myText("2019-2023", Colors.grey[350], 20),
                            ),
                            Container(
                              child: myText("B.Tech in Computer Engineering",
                                  Colors.white, 30),
                            ),
                            Container(
                              child: myText(
                                  "Thapar Institute of Engineering and Technology,",
                                  Colors.grey[350],
                                  25),
                            ),
                            Container(
                              child: myText(
                                  "Patiala, Punjab", Colors.grey[350], 20),
                            ),
                          ],
                        )
                      ],
                    ),
                    // SkillCar(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
