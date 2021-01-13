import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:portfolio/constants/text_style.dart';

class WorkPage extends StatelessWidget {
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
                        child:
                            headText("Work and Achievements", headColor, 50)),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Icon(
                            Icons.work,
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
                              child: myText("2020", Colors.grey[350], 20),
                            ),
                            Container(
                              child: myText(
                                  "Worked on Backend and App design for CYO GYM's",
                                  Colors.white,
                                  30),
                            ),
                            Container(
                              child: myText("Intern at Cybersify Technologies",
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
                            Icons.emoji_events,
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
                              child: myText("2020", Colors.grey[350], 20),
                            ),
                            Container(
                              child:
                                  myText("2nd at Hack4She", Colors.white, 30),
                            ),
                            Container(
                              child: myText(
                                  "Project : RAISE", Colors.grey[350], 25),
                            ),
                            Container(
                              child:
                                  myText("Online Hack", Colors.grey[350], 20),
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

class WorkMobile extends StatelessWidget {
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
                        child:
                            headText("Work and Achievements", headColor, 20)),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Icon(
                            Icons.work,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: myText("2020", Colors.grey[350], 10),
                            ),
                            Container(
                              child: myText(
                                  "Worked on Backend and",
                                  Colors.white,
                                  14),
                            ),
                            Container(
                              child: myText(
                                  "App design for CYO GYM's",
                                  Colors.white,
                                  14),
                            ),
                            Container(
                              child: myText("Intern at Cybersify",
                                  Colors.grey[350], 12),
                            ),
                            Container(
                              child: myText(" Technologies",
                                  Colors.grey[350], 12),
                            ),
                            Container(
                              child: myText(
                                  "Jalandhar, Punjab", Colors.grey[350], 10),
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
                            Icons.emoji_events,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: myText("2020", Colors.grey[350], 10),
                            ),
                            Container(
                              child:
                                  myText("2nd at Hack4She", Colors.white, 16),
                            ),
                            Container(
                              child: myText(
                                  "Project : RAISE", Colors.grey[350], 13),
                            ),
                            Container(
                              child:
                                  myText("Online Hack", Colors.grey[350], 10),
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
