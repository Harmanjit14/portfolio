import 'dart:ui';

import 'package:flutter/material.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: headText("My Skill Set", headColor, 50)),
                // SkillCar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}