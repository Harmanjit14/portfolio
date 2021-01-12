import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/text_style.dart';

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
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        children: [],
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
                              hoverSkill = true;
                              hoverWork = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                (hoverSkill) ? skillsGrid() : skillsGrid(),
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
