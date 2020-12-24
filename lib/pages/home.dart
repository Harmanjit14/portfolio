import 'package:flutter/material.dart';
import 'package:portfolio/constants/navbarItem.dart';
import 'package:portfolio/constants/text_style.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03030F),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
            // height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: myText("Harmanjit Singh", Colors.grey[200], 20),
                ),
                Container(
                    child: Row(
                  children: [
                    NavbarItem(0, "Projects", Icons.work),
                    NavbarItem(1, "Achievements", Icons.emoji_events),
                    NavbarItem(2, "About Me!", Icons.emoji_emotions),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
