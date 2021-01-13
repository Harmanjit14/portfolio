import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/singleCard.dart';
import 'package:portfolio/constants/text_style.dart';
import 'package:portfolio/pages/workPage.dart';

class SkillPage extends StatefulWidget {
  @override
  _SkillPageState createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  final Color headColor = Color(0xffE8BD0D);
  bool hoverSkill = true;
  bool hoverWork = false;

  Widget skillsGrid() {
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
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: headText("My Skills", headColor, 50)),
                  SizedBox(height: 30),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 0,
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        card(85, 1),
                        card(90, 0),
                        card(65, 2),
                        card(75, 3),
                        card(90, 4),
                        card(60, 5)
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

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
          SizedBox.expand(
            child: Container(
              margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  (hoverSkill)
                      ? Expanded(child: skillsGrid())
                      : Expanded(child: WorkPage()),
                  SizedBox(width: 60),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                    height: screenSize.height,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              hoverSkill = true;
                              hoverWork = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                headText(
                                    "Skills",
                                    (hoverSkill) ? headColor : Colors.white,
                                    25),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: (hoverSkill)
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
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              hoverWork = true;
                              hoverSkill = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                headText("Work",
                                    (hoverWork) ? headColor : Colors.white, 25),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: (hoverWork)
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsMobile5 extends StatefulWidget {
  @override
  _SkillsMobile5State createState() => _SkillsMobile5State();
}

class _SkillsMobile5State extends State<SkillsMobile5> {
  final Color headColor = Color(0xffE8BD0D);
  bool hoverSkill = true;
  bool hoverWork = false;

  Widget skillsGrid() {
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
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: headText("My Skills", headColor, 30)),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 0,
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        card2(85, 1),
                        card2(90, 0),
                        card2(65, 2),
                        card2(75, 3),
                        card2(90, 4),
                        card2(60, 5)
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

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
          SizedBox.expand(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    height: screenSize.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              hoverSkill = true;
                              hoverWork = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                headText(
                                    "Skills",
                                    (hoverSkill) ? headColor : Colors.white,
                                    25),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: (hoverSkill)
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
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              hoverWork = true;
                              hoverSkill = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                headText("Work",
                                    (hoverWork) ? headColor : Colors.white, 25),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: (hoverWork)
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
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        (hoverSkill)
                            ? Expanded(child: skillsGrid())
                            : Expanded(child: WorkMobile()),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsGrid5 extends StatefulWidget {
  @override
  _SkillsGrid5State createState() => _SkillsGrid5State();
}

class _SkillsGrid5State extends State<SkillsGrid5> {
  final Color headColor = Color(0xffE8BD0D);
  bool hoverSkill = true;
  bool hoverWork = false;

  Widget skillsGrid() {
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
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: headText("My Skills", headColor, 50)),
                  SizedBox(height: 30),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 0,
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        card2(85, 1),
                        card2(90, 0),
                        card2(65, 2),
                        card2(75, 3),
                        card2(90, 4),
                        card2(60, 5)
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

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
          SizedBox.expand(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    height: screenSize.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              hoverSkill = true;
                              hoverWork = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                headText(
                                    "Skills",
                                    (hoverSkill) ? headColor : Colors.white,
                                    25),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: (hoverSkill)
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
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              hoverWork = true;
                              hoverSkill = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                headText("Work",
                                    (hoverWork) ? headColor : Colors.white, 25),
                                SizedBox(width: 15),
                                Container(
                                  height: 5,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: (hoverWork)
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
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        (hoverSkill)
                            ? Expanded(child: skillsGrid())
                            : Expanded(child: WorkMobile()),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
